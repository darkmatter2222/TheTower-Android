.class public abstract Lads_mobile_sdk/rp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/eq1;


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Z

.field public c:Lads_mobile_sdk/fl1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 320
    instance-of v0, p1, Lads_mobile_sdk/qp0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qp0;

    iget v1, v0, Lads_mobile_sdk/qp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qp0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/qp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/qp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 459
    iget v2, v0, Lads_mobile_sdk/qp0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/qp0;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 460
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/qp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/qp0;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 461
    iget-object p1, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 511
    iput-object p0, v0, Lads_mobile_sdk/qp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/qp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/qp0;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    .line 512
    :cond_4
    :goto_1
    :try_start_1
    iput-boolean v4, p0, Lads_mobile_sdk/rp0;->b:Z

    .line 513
    iput-object p1, v0, Lads_mobile_sdk/qp0;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/qp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/qp0;->e:I

    invoke-virtual {p0, v5, v0}, Lads_mobile_sdk/rp0;->b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object p0, p1

    .line 514
    :goto_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 566
    :goto_4
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public a(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 567
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/hp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 6
    instance-of v0, p2, Lads_mobile_sdk/mp0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/mp0;

    iget v1, v0, Lads_mobile_sdk/mp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mp0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/mp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/mp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/mp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget v2, v0, Lads_mobile_sdk/mp0;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/v01;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/fl1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput v7, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_5

    .line 12
    :cond_7
    :goto_1
    check-cast p2, Lads_mobile_sdk/v01;

    .line 112
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_8

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 113
    :cond_8
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 114
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 115
    check-cast p2, Lads_mobile_sdk/fl1;

    .line 120
    :try_start_2
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v6, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v2, p1

    move-object p1, p2

    .line 121
    :goto_2
    :try_start_3
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v5, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_5

    .line 122
    :cond_a
    :goto_3
    check-cast p2, Lads_mobile_sdk/v01;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v3, Lads_mobile_sdk/np0;

    invoke-direct {v3, p1, v8}, Lads_mobile_sdk/np0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_5

    :cond_b
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :goto_4
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v4, Lads_mobile_sdk/np0;

    invoke-direct {v4, p1, v8}, Lads_mobile_sdk/np0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_5
    return-object v1

    :cond_c
    move-object p1, p2

    .line 135
    :goto_6
    throw p1
.end method

.method public final a(Lads_mobile_sdk/ip0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 136
    instance-of v0, p2, Lads_mobile_sdk/op0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/op0;

    iget v1, v0, Lads_mobile_sdk/op0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/op0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/op0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/op0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/op0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget v2, v0, Lads_mobile_sdk/op0;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/fl1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput v7, v0, Lads_mobile_sdk/op0;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_6

    .line 142
    :cond_7
    :goto_1
    check-cast p2, Lads_mobile_sdk/v01;

    .line 224
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_8

    check-cast p2, Lads_mobile_sdk/i01;

    .line 225
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 303
    :cond_8
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 304
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 305
    check-cast p2, Lads_mobile_sdk/fl1;

    .line 310
    :try_start_2
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v6, v0, Lads_mobile_sdk/op0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, p1

    move-object p1, p2

    .line 311
    :goto_2
    :try_start_3
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v5, v0, Lads_mobile_sdk/op0;->e:I

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_a

    goto :goto_6

    .line 313
    :cond_a
    :goto_3
    sget-object p2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/pp0;

    invoke-direct {v2, p1, v8}, Lads_mobile_sdk/pp0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/op0;->e:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_6

    .line 314
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    .line 318
    :goto_5
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v4, Lads_mobile_sdk/pp0;

    invoke-direct {v4, p1, v8}, Lads_mobile_sdk/pp0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/op0;->e:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    move-object p1, p2

    .line 319
    :goto_7
    throw p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 5
    new-instance v0, Lads_mobile_sdk/ip0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lads_mobile_sdk/ip0;-><init>(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, p3}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/ip0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lads_mobile_sdk/hp0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lads_mobile_sdk/hp0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1, p3}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/hp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/fp0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/fp0;

    iget v1, v0, Lads_mobile_sdk/fp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fp0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/fp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/fp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/fp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lads_mobile_sdk/fp0;->e:I

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
    iget-object p1, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    .line 120
    iput-object p1, p0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    if-eqz p2, :cond_4

    .line 121
    iput-object p0, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    iput-object p1, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iput v4, v0, Lads_mobile_sdk/fp0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p2, 0x0

    .line 122
    iput-object p2, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    iput-object p2, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/fp0;->e:I

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 123
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 124
    instance-of v0, p1, Lads_mobile_sdk/jp0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/jp0;

    iget v1, v0, Lads_mobile_sdk/jp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/jp0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/jp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/jp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/jp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 219
    iget v2, v0, Lads_mobile_sdk/jp0;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/fl1;

    iget-object v0, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rp0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 221
    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rp0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 293
    iput-object p0, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/jp0;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, p0

    .line 294
    :goto_1
    :try_start_2
    iget-object v2, v5, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    .line 296
    iget-boolean v7, v5, Lads_mobile_sdk/rp0;->b:Z

    if-eqz v7, :cond_6

    .line 297
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "EngineSingleton is stopped"

    .line 298
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 299
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_8

    .line 300
    iget-object v7, v2, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz v7, :cond_8

    .line 301
    iget-object v7, v7, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v7, :cond_8

    .line 302
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, p1

    move-object v1, v2

    goto :goto_5

    .line 303
    :cond_8
    :goto_2
    iput-object v5, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/jp0;->e:I

    .line 304
    invoke-virtual {v5, v6, v0}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v5

    .line 305
    :goto_3
    :try_start_3
    check-cast p1, Lads_mobile_sdk/v01;

    .line 380
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_a

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    move-object p1, v2

    goto :goto_6

    .line 381
    :cond_a
    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 382
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 383
    check-cast p1, Lads_mobile_sdk/fl1;

    .line 384
    iput-object v2, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/jp0;->e:I

    invoke-virtual {v4, p1, v0}, Lads_mobile_sdk/rp0;->b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object v1, p1

    move-object v0, v2

    .line 388
    :goto_5
    :try_start_4
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 451
    :goto_6
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_7
    move-object v2, v0

    .line 452
    :goto_8
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/gp0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/gp0;

    iget v1, v0, Lads_mobile_sdk/gp0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gp0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/gp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/gp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/gp0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget v2, v0, Lads_mobile_sdk/gp0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iget-object v4, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rp0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    iget-object p2, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 181
    iput-object p0, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iput-object p2, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/gp0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, p0

    .line 182
    :goto_1
    :try_start_1
    iput-object p2, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iput-object v5, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/gp0;->f:I

    invoke-virtual {v4, p1, v0}, Lads_mobile_sdk/rp0;->b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object p1, p2

    .line 183
    :goto_3
    :try_start_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 253
    :goto_4
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 254
    instance-of v0, p1, Lads_mobile_sdk/kp0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/kp0;

    iget v1, v0, Lads_mobile_sdk/kp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kp0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/kp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/kp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/kp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 281
    iget v2, v0, Lads_mobile_sdk/kp0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/kp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/kp0;->a:Lads_mobile_sdk/rp0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 406
    iput-object p0, v0, Lads_mobile_sdk/kp0;->a:Lads_mobile_sdk/rp0;

    iput-object p1, v0, Lads_mobile_sdk/kp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kp0;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 407
    :goto_1
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    if-eqz p1, :cond_4

    .line 408
    iget-object p1, p1, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_4

    .line 409
    iget-object p1, p1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_4

    .line 410
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 411
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 539
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/lp0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/lp0;

    iget v1, v0, Lads_mobile_sdk/lp0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lp0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/lp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/lp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/lp0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lads_mobile_sdk/lp0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iput v3, v0, Lads_mobile_sdk/lp0;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 39
    :cond_3
    :goto_1
    check-cast p1, Lads_mobile_sdk/v01;

    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
