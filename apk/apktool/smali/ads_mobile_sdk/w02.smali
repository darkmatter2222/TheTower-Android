.class public final Lads_mobile_sdk/w02;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/s02;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/s02;

.field public final synthetic f:Lads_mobile_sdk/g12;

.field public final synthetic g:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    iput-object p2, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/w02;

    iget-object v0, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iget-object v2, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/w02;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/w02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/w02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/w02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lads_mobile_sdk/w02;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/w02;->c:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/w02;->b:Lads_mobile_sdk/rr3;

    iget-object v2, p0, Lads_mobile_sdk/w02;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    .line 90
    sget-object v1, Lads_mobile_sdk/s11;->q0:Lads_mobile_sdk/s11;

    iget-object v4, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iget-object v5, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    .line 274
    sget-object v6, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 275
    :try_start_1
    iget-object v4, v4, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 276
    const-string v6, "app_icon"

    iput-object v1, p0, Lads_mobile_sdk/w02;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/w02;->b:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/w02;->c:Lads_mobile_sdk/s02;

    iput v2, p0, Lads_mobile_sdk/w02;->d:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-static {v5, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 278
    iget-object v5, v4, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v5}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v5

    invoke-virtual {v4, v2, v5, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    .line 279
    :goto_0
    :try_start_2
    check-cast p1, Lads_mobile_sdk/km1;

    .line 468
    instance-of v4, p1, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_3

    .line 469
    move-object v4, p1

    check-cast v4, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 470
    invoke-static {v4, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    :cond_3
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 472
    iput-object p1, v0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    .line 476
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 668
    :goto_2
    :try_start_3
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 672
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_8

    .line 674
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_4

    .line 680
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 686
    :cond_4
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_7

    .line 687
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    .line 688
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_5

    throw p1

    .line 689
    :cond_5
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 690
    :cond_6
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 691
    :cond_7
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 692
    :cond_8
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 693
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
