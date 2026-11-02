.class public final Lads_mobile_sdk/o00;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;


# instance fields
.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/ja1;

.field public final g:Ljava/lang/String;

.field public final h:Lads_mobile_sdk/jb3;

.field public final i:Lads_mobile_sdk/pn;

.field public final j:Lads_mobile_sdk/hf;

.field public final k:Lads_mobile_sdk/ur3;

.field public final l:Lads_mobile_sdk/tx;

.field public final m:Lads_mobile_sdk/ex0;

.field public final n:Lads_mobile_sdk/g83;

.field public final o:Lads_mobile_sdk/g30;

.field public final p:Lads_mobile_sdk/e01;

.field public final q:Lads_mobile_sdk/o21;

.field public final r:Lads_mobile_sdk/ks1;

.field public final s:Lkotlinx/coroutines/sync/Mutex;

.field public t:Z

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lads_mobile_sdk/ja1;Ljava/lang/String;Lads_mobile_sdk/jb3;Lads_mobile_sdk/pn;Lads_mobile_sdk/hf;Lads_mobile_sdk/ur3;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/g30;Lads_mobile_sdk/e01;Lads_mobile_sdk/o21;Lads_mobile_sdk/ks1;)V
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
    const-string v0, "backgroundContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascriptEngine"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v15, 0x1

    move-object/from16 v14, p0

    .line 88
    invoke-direct {v14, v0, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 89
    iput-object v1, v14, Lads_mobile_sdk/o00;->c:Lkotlin/coroutines/CoroutineContext;

    .line 90
    iput-object v2, v14, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 91
    iput-object v3, v14, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    .line 92
    iput-object v4, v14, Lads_mobile_sdk/o00;->f:Lads_mobile_sdk/ja1;

    .line 93
    iput-object v5, v14, Lads_mobile_sdk/o00;->g:Ljava/lang/String;

    .line 94
    iput-object v6, v14, Lads_mobile_sdk/o00;->h:Lads_mobile_sdk/jb3;

    .line 95
    iput-object v7, v14, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 96
    iput-object v8, v14, Lads_mobile_sdk/o00;->j:Lads_mobile_sdk/hf;

    .line 97
    iput-object v9, v14, Lads_mobile_sdk/o00;->k:Lads_mobile_sdk/ur3;

    .line 98
    iput-object v10, v14, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    .line 99
    iput-object v11, v14, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 100
    iput-object v12, v14, Lads_mobile_sdk/o00;->n:Lads_mobile_sdk/g83;

    .line 101
    iput-object v13, v14, Lads_mobile_sdk/o00;->o:Lads_mobile_sdk/g30;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v14, Lads_mobile_sdk/o00;->p:Lads_mobile_sdk/e01;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v14, Lads_mobile_sdk/o00;->q:Lads_mobile_sdk/o21;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v14, Lads_mobile_sdk/o00;->r:Lads_mobile_sdk/ks1;

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, v15, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 109
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, v14, Lads_mobile_sdk/o00;->u:J

    .line 110
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, v14, Lads_mobile_sdk/o00;->v:J

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 5967
    instance-of v0, p2, Lads_mobile_sdk/h00;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/h00;

    iget v1, v0, Lads_mobile_sdk/h00;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h00;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/h00;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/h00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/h00;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6102
    iget v2, v0, Lads_mobile_sdk/h00;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6103
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lads_mobile_sdk/h00;->c:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/o00;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6104
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 2149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2150
    instance-of v0, p2, Lads_mobile_sdk/b00;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/b00;

    iget v1, v0, Lads_mobile_sdk/b00;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b00;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/b00;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/b00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/b00;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2414
    iget v2, v0, Lads_mobile_sdk/b00;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget p0, v0, Lads_mobile_sdk/b00;->d:I

    iget-wide v5, v0, Lads_mobile_sdk/b00;->e:J

    iget p1, v0, Lads_mobile_sdk/b00;->c:I

    iget-object v2, v0, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v7, v0, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move p2, p1

    move-object p1, v2

    goto/16 :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p0, v0, Lads_mobile_sdk/b00;->d:I

    iget-wide v5, v0, Lads_mobile_sdk/b00;->e:J

    iget p1, v0, Lads_mobile_sdk/b00;->c:I

    iget-object v2, v0, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v7, v0, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2417
    iget-object p2, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 2419
    const-string v2, "gads:cld_request_retries"

    const-string v5, "key"

    const/4 v6, 0x0

    invoke-static {p2, v2, v5, v6}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .line 2420
    sget-object v8, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p2, v2, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 2421
    iget-object v2, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2422
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v7, 0x5

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2423
    const-string v9, "gads:cld_request_throttle_interval_ms"

    invoke-static {v7, v8, v9, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v5

    .line 2424
    sget-object v7, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v2, v9, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    if-ltz p2, :cond_9

    .line 2425
    :goto_1
    iput-object p0, v0, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput p2, v0, Lads_mobile_sdk/b00;->c:I

    iput-wide v7, v0, Lads_mobile_sdk/b00;->e:J

    iput v6, v0, Lads_mobile_sdk/b00;->d:I

    iput v4, v0, Lads_mobile_sdk/b00;->h:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/o00;->b(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-wide v10, v7

    move-object v7, p0

    move p0, v6

    move-wide v5, v10

    move-object v10, v2

    move-object v2, p1

    move p1, p2

    move-object p2, v10

    .line 2426
    :goto_2
    check-cast p2, Lads_mobile_sdk/v01;

    .line 2437
    instance-of v8, p2, Lads_mobile_sdk/q01;

    if-eqz v8, :cond_6

    goto :goto_3

    .line 2440
    :cond_6
    instance-of v8, p2, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_8

    .line 2445
    iget-boolean v8, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->isCalledFromInit:Z

    if-eqz v8, :cond_7

    if-ne p0, p1, :cond_8

    :cond_7
    :goto_3
    return-object p2

    .line 2451
    :cond_8
    iput-object v7, v0, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    iput-object v2, v0, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput p1, v0, Lads_mobile_sdk/b00;->c:I

    iput-wide v5, v0, Lads_mobile_sdk/b00;->e:J

    iput p0, v0, Lads_mobile_sdk/b00;->d:I

    iput v3, v0, Lads_mobile_sdk/b00;->h:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    :goto_4
    return-object v1

    :goto_5
    const/4 v2, 0x3

    .line 2452
    invoke-static {v5, v6, v2}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v5

    if-eq p0, p2, :cond_9

    add-int/lit8 p0, p0, 0x1

    move-wide v10, v5

    move v6, p0

    move-object p0, v7

    move-wide v7, v10

    goto :goto_1

    .line 2454
    :cond_9
    new-instance p0, Lads_mobile_sdk/m01;

    const-string p1, "Failed to successfully fetch app settings after all retries."

    .line 2455
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2456
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 2529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2530
    instance-of v0, p1, Lads_mobile_sdk/m00;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m00;

    iget v1, v0, Lads_mobile_sdk/m00;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m00;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/m00;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/m00;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3186
    iget v2, v0, Lads_mobile_sdk/m00;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/m00;->a:Lads_mobile_sdk/o00;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3187
    iget-boolean p1, p0, Lads_mobile_sdk/o00;->t:Z

    if-eqz p1, :cond_3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3189
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/m00;->a:Lads_mobile_sdk/o00;

    iput v3, v0, Lads_mobile_sdk/m00;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3190
    invoke-static {p1, v0}, Lads_mobile_sdk/pn;->c(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 3191
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3194
    :cond_5
    iget-wide v0, p0, Lads_mobile_sdk/o00;->u:J

    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v0

    const-string v1, "key"

    if-nez v0, :cond_6

    .line 3195
    iget-object v0, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3197
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lads_mobile_sdk/o00;->u:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3198
    iget-object v0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    .line 3199
    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 3200
    const-string v8, "gads:fetch_app_settings_using_cld:throttle_interval_ms"

    invoke-static {v2, v7, v8, v1}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 3201
    sget-object v7, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v8, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 3202
    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_6

    .line 3205
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3209
    :cond_6
    iget-wide v5, p0, Lads_mobile_sdk/o00;->v:J

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3210
    iget-object p1, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3212
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lads_mobile_sdk/o00;->v:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3213
    iget-object p0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    .line 3214
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 3215
    const-string v2, "gads:fetch_app_settings_using_cld:refresh_interval_ms"

    invoke-static {p1, v0, v2, v1}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object p1

    .line 3216
    sget-object v0, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p0, v2, p1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/time/Duration;

    invoke-virtual {p0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p0

    .line 3217
    invoke-static {v5, v6, p0, p1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p0

    if-gez p0, :cond_7

    .line 3220
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3223
    :cond_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lads_mobile_sdk/zz;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/zz;

    iget v3, v2, Lads_mobile_sdk/zz;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/zz;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/zz;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/zz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lads_mobile_sdk/zz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 68
    iget v2, v9, Lads_mobile_sdk/zz;->f:I

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v14, :cond_3

    if-eq v2, v13, :cond_2

    if-ne v2, v12, :cond_1

    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v0

    move-object v0, v2

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v0

    move-object v0, v2

    goto/16 :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    .line 74
    iget-object v2, v0, Lads_mobile_sdk/o00;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, ""

    .line 77
    :cond_6
    iget-object v3, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "getPackageName(...)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v3, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 81
    :cond_7
    iget-object v4, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    goto :goto_2

    :catch_0
    :goto_1
    move-object v6, v15

    .line 82
    :goto_2
    iget-object v7, v0, Lads_mobile_sdk/o00;->g:Ljava/lang/String;

    .line 83
    iget-object v3, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 84
    iget-object v3, v3, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 85
    invoke-virtual {v3}, Lads_mobile_sdk/eb3;->c()Ljava/lang/String;

    move-result-object v8

    move/from16 v4, p1

    move-object/from16 v3, p2

    .line 86
    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v5, "key"

    const-string v6, "gads:fetch_cld_in_native:enabled"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 117
    iput-object v0, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-boolean v4, v9, Lads_mobile_sdk/zz;->c:Z

    iput v14, v9, Lads_mobile_sdk/zz;->f:I

    .line 118
    new-instance v2, Lads_mobile_sdk/d00;

    invoke-direct {v2, v0, v1, v15}, Lads_mobile_sdk/d00;-><init>(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v2, v9}, Lads_mobile_sdk/o00;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_8

    goto/16 :goto_8

    .line 119
    :cond_8
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    move-object v3, v0

    move v0, v1

    goto :goto_6

    .line 121
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-boolean v4, v9, Lads_mobile_sdk/zz;->c:Z

    iput v13, v9, Lads_mobile_sdk/zz;->f:I

    .line 122
    new-instance v1, Lads_mobile_sdk/c00;

    invoke-direct {v1, v0, v2, v15}, Lads_mobile_sdk/c00;-><init>(Lads_mobile_sdk/o00;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v9}, Lads_mobile_sdk/o00;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_a

    goto :goto_8

    .line 123
    :cond_a
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    .line 129
    :goto_6
    iget-object v1, v3, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 130
    iget-boolean v2, v1, Lads_mobile_sdk/ex0;->w:Z

    if-nez v2, :cond_b

    .line 131
    iget-wide v1, v1, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-lez v1, :cond_c

    :cond_b
    if-eqz v0, :cond_c

    if-nez v4, :cond_c

    .line 132
    iget-object v1, v3, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/a00;

    invoke-direct {v2, v3, v15}, Lads_mobile_sdk/a00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 133
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 134
    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v2, v15}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 393
    :cond_c
    iget-object v2, v3, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 953
    iput-object v3, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-object v2, v9, Lads_mobile_sdk/zz;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iput v12, v9, Lads_mobile_sdk/zz;->f:I

    invoke-interface {v2, v15, v9}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_d

    goto :goto_8

    .line 954
    :cond_d
    :goto_7
    :try_start_1
    iput-boolean v11, v3, Lads_mobile_sdk/o00;->t:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1519
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_8
    return-object v10

    :catchall_0
    move-exception v0

    .line 2082
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static b(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/e00;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/e00;

    iget v1, v0, Lads_mobile_sdk/e00;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/e00;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/e00;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/e00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/e00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 683
    iget v2, v0, Lads_mobile_sdk/e00;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/e00;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/e00;->a:Lads_mobile_sdk/o00;

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

    iget-object p1, p0, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 806
    iput-object p0, v0, Lads_mobile_sdk/e00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/e00;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/e00;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 807
    :cond_3
    :goto_1
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/o00;->v:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_2

    .line 810
    :cond_4
    iget-object v0, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 812
    iget-wide v2, p0, Lads_mobile_sdk/o00;->v:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 813
    :goto_2
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 940
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6107
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 6111
    iget-object v2, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->c0()Ljava/util/List;

    move-result-object v2

    .line 6112
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v3, "common_settings"

    invoke-static {v1, v3}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 6115
    const-string v5, "app_id"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6119
    const-string v6, "prefetch_directive"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6122
    const-string v6, "persistable_banner_ad_unit_ids"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6124
    const-string v6, "exp_param"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "loeid"

    if-eqz v8, :cond_0

    .line 6125
    invoke-static {v8, v9}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6543
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 6544
    check-cast v11, Lcom/google/gson/JsonElement;

    .line 6545
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 6963
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6964
    :cond_0
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6965
    :cond_1
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 6966
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6967
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6968
    :cond_2
    const-string v6, "cache_ttl_sec"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x3

    const-string v10, "key"

    if-nez v8, :cond_3

    .line 6969
    iget-object v8, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6970
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v11, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 6971
    const-string v12, "gads:default_cld_ttl_secs"

    invoke-static {v9, v11, v12, v10}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v11

    .line 6972
    sget-object v13, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v8, v12, v11, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/time/Duration;

    invoke-virtual {v8}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v11

    .line 6973
    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 6974
    :cond_3
    const-string v6, "ad_unit_settings"

    invoke-static {v1, v6}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    const-string v11, "ad_unit_id_settings"

    if-eqz v8, :cond_4

    .line 6975
    invoke-virtual {v1, v11, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6976
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6978
    :cond_4
    invoke-static {v1, v11}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const-string v8, "defaultValue"

    if-nez v6, :cond_6

    :cond_5
    move/from16 v17, v4

    move/from16 v16, v9

    goto/16 :goto_7

    .line 6980
    :cond_6
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    .line 6981
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 6982
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    const-string v13, "getAsJsonObject(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6983
    const-string v13, "is_mediation"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 6984
    sget-object v15, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v14, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 6985
    const-string v15, "request_signals"

    invoke-static {v12, v15}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 6986
    :cond_8
    new-instance v11, Lkotlin/text/Regex;

    iget-object v12, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6988
    const-string v13, "gads:ad_manager_inventory_unit_regex"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "^/(\\d+)(/.*)?$"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7030
    sget-object v15, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v12, v13, v14, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 7031
    invoke-direct {v11, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 7032
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7033
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonElement;

    .line 7034
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 7035
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    .line 7036
    const-string v14, "ad_unit_id"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_a
    move-object v14, v7

    .line 7037
    :goto_3
    const-string v15, "format"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_b
    move-object v13, v7

    :goto_4
    if-eqz v14, :cond_9

    .line 7039
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_c

    goto :goto_2

    :cond_c
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v11, v14}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 7407
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_e

    .line 7408
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7777
    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7778
    :cond_e
    check-cast v15, Ljava/util/List;

    .line 7779
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7780
    :cond_f
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7785
    iget-object v6, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7787
    const-string v11, "gads:match_child_ad_unit_regex:enabled"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7803
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v14, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v11, v13, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 7804
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 7805
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 7806
    new-instance v15, Lcom/google/gson/JsonArray;

    invoke-direct {v15}, Lcom/google/gson/JsonArray;-><init>()V

    move/from16 v16, v9

    .line 8166
    new-instance v9, Lads_mobile_sdk/uz;

    invoke-direct {v9}, Lads_mobile_sdk/uz;-><init>()V

    invoke-static {v13, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 8167
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move/from16 v17, v4

    .line 8168
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8169
    invoke-virtual {v0, v13, v6}, Lads_mobile_sdk/o00;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 8170
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    move/from16 v18, v6

    .line 8171
    const-string v6, "including"

    invoke-virtual {v7, v6, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8172
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v6, "excluding"

    invoke-virtual {v7, v6, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8173
    const-string v4, "effective_ad_unit_id"

    invoke-virtual {v7, v4, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8174
    invoke-virtual {v15, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move/from16 v4, v17

    move/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    move/from16 v17, v4

    move/from16 v18, v6

    .line 8176
    invoke-virtual {v11, v14, v15}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move/from16 v9, v16

    const/4 v7, 0x0

    goto :goto_5

    :cond_11
    move/from16 v17, v4

    move/from16 v16, v9

    .line 8177
    const-string v4, "ad_unit_patterns"

    invoke-virtual {v1, v4, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8178
    :goto_7
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v4, "initializer_settings"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v6, "config"

    invoke-static {v4, v6}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 8179
    iget-object v6, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x4

    .line 8185
    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "GADMediationAdapterAdColony"

    const/4 v11, 0x0

    aput-object v9, v7, v11

    const-string v9, "GADMAdapterAdColony"

    aput-object v9, v7, v17

    const/4 v9, 0x2

    const-string v12, "com.google.ads.mediation.adcolony.AdColonyMediationAdapter"

    aput-object v12, v7, v9

    const-string v9, "com.jirbo.adcolony.AdColonyAdapter"

    aput-object v9, v7, v16

    .line 8186
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 8187
    const-string v9, "gads:ad_colony_adapters_name_list_for_cld"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8232
    sget-object v8, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v6, v9, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8233
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 8234
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const/4 v8, 0x0

    .line 8235
    invoke-static {v4, v7, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_8

    .line 8236
    :cond_12
    const-string v8, "data"

    invoke-static {v7, v8}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v9

    if-nez v9, :cond_13

    goto :goto_8

    .line 8238
    :cond_13
    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8239
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    .line 8240
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 8241
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 8242
    sget-object v13, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const/4 v13, 0x0

    .line 8243
    invoke-static {v12, v8, v13}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v14

    if-nez v14, :cond_15

    goto :goto_9

    .line 8244
    :cond_15
    const-string v13, "zone_id"

    invoke-virtual {v14, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    const-string v11, "zone_ids"

    invoke-static {v14, v11, v15}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8245
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-static {v14, v13, v15}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8246
    invoke-virtual {v14, v13}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v14, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 8247
    invoke-virtual {v10, v12}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_16
    const/4 v11, 0x0

    goto :goto_9

    .line 8250
    :cond_17
    invoke-virtual {v7, v8, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v11, 0x0

    goto :goto_8

    .line 8251
    :cond_18
    const-string v4, "publisher_permissions"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 8252
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_19

    .line 8257
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-lez v7, :cond_19

    move/from16 v7, v17

    goto :goto_a

    :cond_19
    const/4 v7, 0x0

    :goto_a
    if-nez v5, :cond_1a

    .line 8259
    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_1a
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 8260
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 8261
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    if-eqz v7, :cond_1c

    .line 8262
    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v7, "eoid_enabled"

    invoke-virtual {v8, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-static {v7, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move/from16 v7, v17

    goto :goto_c

    :cond_1c
    const/4 v7, 0x0

    .line 8264
    :goto_c
    const-string v9, "platform"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_1d
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_1e

    goto :goto_b

    .line 8265
    :cond_1e
    sget-object v10, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v10, "same_app_key_opt_out"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-static {v10, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 8266
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8268
    :cond_1f
    const-string v10, "same_app_key_p13n_disabled"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v8, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 8269
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 8273
    :cond_20
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "eoid_opt_in"

    invoke-virtual {v3, v7, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8274
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 8277
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 8278
    const-string v5, "same_app_key_opt_out_platforms"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8283
    :cond_21
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 8286
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v6}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 8287
    const-string v5, "same_app_key_p13n_disabled_platforms"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8288
    :cond_22
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 8289
    const-string v4, "platform_settings"

    const/4 v8, 0x0

    invoke-static {v1, v4, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 8290
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8292
    const-string v4, "gmp_app_id"

    if-eqz v5, :cond_23

    .line 8293
    const-string v6, "ga_settings"

    .line 8294
    invoke-static {v5, v6, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 8295
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    goto :goto_e

    :cond_23
    move-object v7, v8

    .line 8296
    :goto_e
    invoke-static {v3, v4, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8297
    const-string v3, "odf_settings"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8298
    const-string v3, "signal_adapters"

    invoke-static {v1, v3}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 8299
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-nez v5, :cond_2f

    .line 8300
    :cond_24
    const-string v5, "adapter_settings"

    invoke-static {v1, v5}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 8301
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-lez v6, :cond_2f

    .line 8302
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8303
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 8304
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 8305
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 8306
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8307
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v8, "adapter_class_name"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8308
    const-string v8, "permission_set"

    invoke-static {v6, v8}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    if-eqz v6, :cond_2d

    .line 8312
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 8313
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 8314
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "collect_secure_signals"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v9

    move/from16 v10, v17

    if-ne v9, v10, :cond_26

    move/from16 v17, v10

    goto :goto_10

    :cond_26
    const/4 v10, 0x0

    goto :goto_11

    :cond_27
    const/16 v17, 0x1

    goto :goto_10

    :cond_28
    const/4 v10, 0x1

    .line 8315
    :goto_11
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 8316
    const-string v9, "collect_signals"

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8323
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 8324
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 8325
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "enable_rendering"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_2a

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2b

    goto :goto_12

    :cond_2a
    const/4 v10, 0x1

    :cond_2b
    const/4 v6, 0x0

    goto :goto_13

    :cond_2c
    const/4 v10, 0x1

    move v6, v10

    .line 8326
    :goto_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 8327
    const-string v8, "keep_for_rendering"

    invoke-virtual {v7, v8, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_14

    :cond_2d
    move/from16 v10, v17

    .line 8332
    :goto_14
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move/from16 v17, v10

    goto/16 :goto_f

    .line 8333
    :cond_2e
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2f
    if-eqz v4, :cond_33

    .line 8336
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-nez v5, :cond_30

    goto :goto_16

    .line 8338
    :cond_30
    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8339
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 8340
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 8341
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 8342
    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v7, "keep_for_rendering"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-static {v7, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 8343
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_15

    .line 8346
    :cond_32
    invoke-virtual {v1, v3, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8347
    :cond_33
    :goto_16
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8348
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isSuccessful"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8349
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appSettingsJson"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8350
    const-string v1, "errorReason"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8351
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 8352
    :cond_34
    new-instance v3, Lads_mobile_sdk/m01;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Response status not OK - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 5966
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 3230
    instance-of v0, p2, Lads_mobile_sdk/vz;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vz;

    iget v1, v0, Lads_mobile_sdk/vz;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vz;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/vz;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/vz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3441
    iget v2, v0, Lads_mobile_sdk/vz;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/vz;->c:Lads_mobile_sdk/e81;

    iget-object v1, v0, Lads_mobile_sdk/vz;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v0, v0, Lads_mobile_sdk/vz;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3443
    iget-object p2, p0, Lads_mobile_sdk/o00;->q:Lads_mobile_sdk/o21;

    invoke-virtual {p2}, Lads_mobile_sdk/o21;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3444
    const-string p2, "https://mediation.goog"

    goto :goto_1

    .line 3446
    :cond_3
    const-string p2, "https://googleads.g.doubleclick.net"

    .line 3450
    :goto_1
    new-instance v2, Lads_mobile_sdk/e81;

    invoke-direct {v2}, Lads_mobile_sdk/e81;-><init>()V

    .line 3451
    const-string v4, "/getconfig/pubsetting"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3452
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->packageName:Ljava/lang/String;

    const-string v4, "app_name"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3453
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->experimentIds:Ljava/lang/String;

    const-string v4, "eid"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3454
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->afmaVersion:Ljava/lang/String;

    const-string v4, "js"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3455
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->versionCode:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vnm"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3457
    :cond_4
    iget-object v2, p0, Lads_mobile_sdk/o00;->r:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/if1;

    iput-object p0, v0, Lads_mobile_sdk/vz;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/vz;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput-object p2, v0, Lads_mobile_sdk/vz;->c:Lads_mobile_sdk/e81;

    iput v3, v0, Lads_mobile_sdk/vz;->f:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/if1;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    .line 3458
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3459
    const-string p2, "aie"

    const-string v2, "1"

    invoke-virtual {p1, p2, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3462
    :cond_6
    iget-object p2, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->appId:Ljava/lang/String;

    .line 3463
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->adUnitId:Ljava/lang/String;

    .line 3465
    new-instance v2, Lkotlin/text/Regex;

    iget-object v4, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3466
    invoke-static {v2, p2, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3467
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_7

    .line 3468
    sget-object p2, Lads_mobile_sdk/dt;->z3:Lads_mobile_sdk/dt;

    invoke-virtual {p2}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getFirstUrlKey(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3469
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "admob_appcc"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3470
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 3473
    :cond_7
    new-instance v2, Lkotlin/text/Regex;

    iget-object v7, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 3474
    invoke-static {v2, p2, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 3475
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_8

    .line 3476
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "iu"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3477
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "msid"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3478
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_8
    if-eqz v1, :cond_a

    .line 3482
    new-instance p2, Lkotlin/text/Regex;

    iget-object v0, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 3483
    invoke-static {p2, v1, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 3484
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_9

    .line 3485
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "client"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3486
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "slotname"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3487
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 3489
    :cond_9
    new-instance p1, Lads_mobile_sdk/m01;

    sget-object p2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    const-string v0, "No ad unit id match found."

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 3492
    :cond_a
    new-instance p1, Lads_mobile_sdk/m01;

    sget-object p2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    const-string v0, "No client id found."

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 4235
    instance-of v2, v0, Lads_mobile_sdk/wz;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/wz;

    iget v3, v2, Lads_mobile_sdk/wz;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/wz;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/wz;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/wz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/wz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 4832
    iget v4, v2, Lads_mobile_sdk/wz;->f:I

    const-string v5, "block"

    const-string v6, "context"

    const-string v7, "<this>"

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v11, :cond_3

    if-eq v4, v10, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4833
    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iget-object v13, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 4834
    :cond_3
    iget-object v4, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v4

    goto/16 :goto_5

    .line 4835
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4837
    :try_start_3
    iput-object v1, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput v11, v2, Lads_mobile_sdk/wz;->f:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v1

    .line 4838
    :goto_1
    :try_start_4
    check-cast v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_8

    .line 4842
    iget-object v13, v4, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 5035
    iput-object v4, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput-object v0, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/wz;->f:I

    invoke-interface {v13, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v10, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v10, v13

    move-object v13, v4

    move-object v4, v10

    move-object v10, v0

    .line 5036
    :goto_2
    :try_start_5
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v13, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 5038
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    iput-wide v14, v13, Lads_mobile_sdk/o00;->v:J

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5235
    :try_start_6
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5236
    iget-object v0, v13, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    iget-object v4, v13, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 5238
    iput-object v13, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput-object v12, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iput-object v12, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/wz;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5239
    invoke-static {v0, v10, v14, v15, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lcom/google/gson/JsonObject;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-ne v0, v3, :cond_7

    :goto_3
    return-object v3

    :cond_7
    move-object v2, v13

    .line 5240
    :goto_4
    :try_start_7
    iget-object v13, v2, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/xz;

    invoke-direct {v0, v2, v12}, Lads_mobile_sdk/xz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 5241
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5242
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5500
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, v0, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5501
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5694
    :try_start_8
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    move-object v2, v13

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_5
    move-object v13, v2

    .line 5695
    :goto_6
    const-string v2, "exception"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5696
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 5699
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v8, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 5700
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5701
    iget-object v2, v13, Lads_mobile_sdk/o00;->k:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    const-string v3, "ConfigLoader.executeCldFetch"

    invoke-virtual {v2, v3, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v13

    .line 5704
    :cond_8
    iget-object v13, v4, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/yz;

    invoke-direct {v0, v4, v12}, Lads_mobile_sdk/yz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 5705
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5706
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5964
    new-instance v2, Lads_mobile_sdk/ws3;

    invoke-direct {v2, v0, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5965
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 4227
    iget-object v0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->o()Ljava/lang/String;

    move-result-object v0

    .line 4228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "toString(...)"

    if-ge v4, v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 4230
    invoke-static {v0, v6, v3, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    .line 4231
    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\\x{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4233
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4234
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 8353
    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9056
    invoke-virtual {p0, p1}, Lads_mobile_sdk/o00;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/?$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/(//)*[^/]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 9068
    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "\\d+"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 9069
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v4

    const-string v5, "(,\\d+)?"

    if-eqz v4, :cond_0

    .line 9071
    invoke-interface {v4}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-interface {v4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Lkotlin/text/StringsKt;->replaceRange(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9073
    :cond_0
    invoke-static {p2, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9075
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lkotlin/text/StringsKt;->replaceRange(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9078
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 941
    const-string v0, "Failed to parse CLD response."

    instance-of v1, p2, Lads_mobile_sdk/f00;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/f00;

    iget v2, v1, Lads_mobile_sdk/f00;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/f00;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/f00;

    invoke-direct {v1, p0, p2}, Lads_mobile_sdk/f00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v1

    iget-object p2, v6, Lads_mobile_sdk/f00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1236
    iget v2, v6, Lads_mobile_sdk/f00;->e:I

    const-string v8, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v2, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v9

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1238
    iput-object p0, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput v4, v6, Lads_mobile_sdk/f00;->e:I

    invoke-virtual {p0, p1, v6}, Lads_mobile_sdk/o00;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    .line 1239
    :goto_1
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1718
    instance-of v4, v2, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_5

    check-cast v2, Lads_mobile_sdk/i01;

    return-object v2

    .line 1719
    :cond_5
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 1720
    iget-object v2, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1721
    check-cast v2, Lads_mobile_sdk/f81;

    move v4, v3

    move-object v3, v2

    .line 1726
    iget-object v2, p1, Lads_mobile_sdk/o00;->p:Lads_mobile_sdk/e01;

    iput-object p1, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    iput-object p2, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput v4, v6, Lads_mobile_sdk/f00;->e:I

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_2
    return-object v1

    .line 1727
    :cond_6
    :goto_3
    check-cast p2, Lads_mobile_sdk/v01;

    .line 2208
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_7

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 2209
    :cond_7
    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 2210
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 2211
    check-cast p2, Lads_mobile_sdk/h81;

    .line 2212
    iget-object p2, p2, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p2, :cond_8

    .line 2213
    invoke-static {p2}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_8
    const-string p2, ""

    .line 2215
    :goto_4
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    if-nez p2, :cond_9

    .line 2217
    new-instance p1, Lads_mobile_sdk/m01;

    .line 2218
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2219
    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 2220
    :cond_9
    invoke-virtual {p1, p2}, Lads_mobile_sdk/o00;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2222
    :catch_0
    new-instance p1, Lads_mobile_sdk/m01;

    .line 2223
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2224
    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 2225
    instance-of v0, p2, Lads_mobile_sdk/n00;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/n00;

    iget v1, v0, Lads_mobile_sdk/n00;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n00;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/n00;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/n00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/n00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2365
    iget v2, v0, Lads_mobile_sdk/n00;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2368
    iget-object p2, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2369
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2370
    const-string v5, "key"

    const/16 v6, 0x3c

    const-string v7, "gads:cld_fetch_delay_on_cache_hit"

    invoke-static {v6, v2, v7, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 2371
    sget-object v5, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p2, v7, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 2372
    iput-object p0, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/n00;->e:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p2, 0x0

    .line 2373
    iput-object p2, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    iput-object p2, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/n00;->e:I

    .line 2374
    iget-object v3, v2, Lads_mobile_sdk/o00;->c:Lkotlin/coroutines/CoroutineContext;

    .line 2375
    new-instance v4, Lads_mobile_sdk/g00;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, p1, p2}, Lads_mobile_sdk/g00;-><init>(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/l00;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 3
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 263
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
