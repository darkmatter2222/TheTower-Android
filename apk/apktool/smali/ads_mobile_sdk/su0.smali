.class public final Lads_mobile_sdk/su0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/bv0;

.field public final synthetic e:Lads_mobile_sdk/g32;

.field public final synthetic f:Lcom/google/gson/JsonObject;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iput-object p2, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iput-object p3, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iput-object p4, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lads_mobile_sdk/su0;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/su0;

    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iget-object v2, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iget-object v3, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iget-boolean v5, p0, Lads_mobile_sdk/su0;->h:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/su0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/su0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/su0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/su0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 556
    iget v1, p0, Lads_mobile_sdk/su0;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 557
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_1

    .line 558
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iget-object v6, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iget-object v7, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iget-object v8, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lads_mobile_sdk/su0;->h:Z

    .line 564
    const-string v10, "ad"

    .line 565
    iget-object v11, v1, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    .line 566
    invoke-virtual {p1, v10, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz v6, :cond_3

    .line 568
    iget-object v10, v6, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    const-string v11, "asset_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 569
    iget-object v10, v6, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    const-string v11, "ad_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 570
    iget-object v10, v6, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    const-string v11, "scroll_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 571
    iget-object v10, v6, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    const-string v11, "lock_screen_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 572
    iget-object v6, v6, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    const-string v10, "screen"

    invoke-virtual {p1, v10, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_3
    if-eqz v7, :cond_4

    .line 574
    const-string v6, "provided_signals"

    invoke-virtual {p1, v6, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_4
    if-eqz v8, :cond_5

    .line 575
    const-string v6, "view_signals"

    invoke-virtual {p1, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_5
    const-string v6, "policy_validator_enabled"

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 577
    iget-object v6, v1, Lads_mobile_sdk/bv0;->y:Lads_mobile_sdk/ex0;

    .line 578
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    const-string v7, "key"

    const-string v8, "gads:enable_placement_id:enabled"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v8, v7, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 597
    iget-object v6, v1, Lads_mobile_sdk/bv0;->C:Lads_mobile_sdk/eo2;

    .line 598
    iget-object v6, v6, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 599
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 601
    iget-object v1, v1, Lads_mobile_sdk/bv0;->C:Lads_mobile_sdk/eo2;

    .line 602
    iget-object v1, v1, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 603
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "placement_id"

    invoke-virtual {p1, v6, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 607
    :cond_6
    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    .line 608
    iget-object v6, v1, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 609
    sget-object v7, Lads_mobile_sdk/s11;->j0:Lads_mobile_sdk/s11;

    .line 610
    iget-object v8, v1, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 611
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 612
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 613
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, "toString(...)"

    const-string v12, "google.afma.nativeAds.handleImpression"

    if-nez v10, :cond_f

    .line 614
    invoke-static {v6, v7, v9, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 615
    :try_start_2
    iget-object v1, v1, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 616
    iput-object v2, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    iput-object v2, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/su0;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v12, p1, p0}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v0, :cond_7

    goto/16 :goto_3

    :cond_7
    move-object v0, v2

    move-object v1, v0

    .line 618
    :goto_0
    :try_start_3
    check-cast p1, Lads_mobile_sdk/v01;

    .line 645
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_8

    .line 646
    check-cast p1, Lads_mobile_sdk/i01;

    .line 647
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 648
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 963
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9

    .line 964
    check-cast p1, Lads_mobile_sdk/i01;

    .line 965
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 966
    :cond_9
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :goto_1
    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, v2

    .line 974
    :goto_2
    :try_start_4
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 978
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e

    .line 980
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 986
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 992
    :cond_a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 993
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 994
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw p1

    .line 995
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 996
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 997
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 998
    :cond_e
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 999
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 1033
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v7, v6, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 1034
    :try_start_6
    iget-object v1, v1, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 1035
    iput-object v3, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    iput-object v3, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/su0;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v12, p1, p0}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne p1, v0, :cond_10

    :goto_3
    return-object v0

    :cond_10
    move-object v0, v3

    move-object v1, v0

    .line 1037
    :goto_4
    :try_start_7
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1064
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_11

    .line 1065
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1066
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 1067
    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1419
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_12

    .line 1420
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1421
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1422
    :cond_12
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1423
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_6
    move-object v3, v1

    goto :goto_7

    :catchall_5
    move-exception p1

    move-object v0, v3

    .line 1779
    :goto_7
    :try_start_8
    invoke-virtual {v3, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1783
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_17

    .line 1785
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_13

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13

    .line 1791
    invoke-virtual {v3, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1797
    :cond_13
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_16

    .line 1798
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_15

    .line 1799
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_14

    throw p1

    .line 1800
    :cond_14
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1801
    :cond_15
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1802
    :cond_16
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1803
    :cond_17
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    .line 1804
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
