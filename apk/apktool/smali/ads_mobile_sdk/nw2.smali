.class public final Lads_mobile_sdk/nw2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ow2;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/nw2;->a:Lads_mobile_sdk/ow2;

    iput-object p2, p0, Lads_mobile_sdk/nw2;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/nw2;

    iget-object v0, p0, Lads_mobile_sdk/nw2;->a:Lads_mobile_sdk/ow2;

    iget-object v1, p0, Lads_mobile_sdk/nw2;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/nw2;

    iget-object v0, p0, Lads_mobile_sdk/nw2;->a:Lads_mobile_sdk/ow2;

    iget-object v1, p0, Lads_mobile_sdk/nw2;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/nw2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lads_mobile_sdk/nw2;->a:Lads_mobile_sdk/ow2;

    .line 188
    iget-object p1, p1, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 189
    sget-object v0, Lads_mobile_sdk/s11;->g0:Lads_mobile_sdk/s11;

    .line 190
    new-instance v1, Lads_mobile_sdk/ks3;

    .line 191
    new-instance v2, Lads_mobile_sdk/n03;

    invoke-direct {v2}, Lads_mobile_sdk/n03;-><init>()V

    .line 192
    new-instance v3, Lads_mobile_sdk/tn1;

    invoke-direct {v3}, Lads_mobile_sdk/tn1;-><init>()V

    .line 193
    new-instance v4, Lads_mobile_sdk/m33;

    invoke-direct {v4}, Lads_mobile_sdk/m33;-><init>()V

    .line 194
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 195
    invoke-direct {v1, v2, v3, v4, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 196
    iget-object v2, p0, Lads_mobile_sdk/nw2;->b:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/nw2;->a:Lads_mobile_sdk/ow2;

    .line 282
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 283
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 284
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v6, 0x0

    const-string v7, "uri"

    const/4 v8, 0x0

    if-nez v5, :cond_6

    .line 285
    invoke-static {p1, v0, v4, v1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 289
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 290
    iget-object v1, v3, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    .line 291
    iget-object v2, v3, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    .line 292
    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    iget-object v1, v3, Lads_mobile_sdk/ow2;->g:Lads_mobile_sdk/vw3;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v1, v1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 433
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lads_mobile_sdk/i01;

    .line 435
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    invoke-static {p1, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 445
    :try_start_1
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 449
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_5

    .line 451
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1

    .line 457
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 463
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_4

    .line 464
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_3

    .line 465
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2

    throw v0

    .line 466
    :cond_2
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :cond_3
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 468
    :cond_4
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 469
    :cond_5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 470
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 505
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 506
    :try_start_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 507
    iget-object v1, v3, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    .line 508
    iget-object v2, v3, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    .line 509
    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v0

    .line 510
    iget-object v1, v3, Lads_mobile_sdk/ow2;->g:Lads_mobile_sdk/vw3;

    .line 511
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iget-object v1, v1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 687
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_7

    .line 688
    check-cast v0, Lads_mobile_sdk/i01;

    .line 689
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 690
    :cond_7
    invoke-static {p1, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 691
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_3
    move-exception v0

    .line 827
    :try_start_4
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 831
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_c

    .line 833
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    .line 839
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 845
    :cond_8
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b

    .line 846
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 847
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_9

    throw v0

    .line 848
    :cond_9
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 849
    :cond_a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 850
    :cond_b
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 851
    :cond_c
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    .line 852
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
