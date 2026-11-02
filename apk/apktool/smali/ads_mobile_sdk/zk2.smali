.class public final Lads_mobile_sdk/zk2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:Lkotlin/Pair;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/al2;

.field public final synthetic e:Lads_mobile_sdk/j53;

.field public final synthetic f:Lads_mobile_sdk/om2;

.field public final synthetic g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/j53;Lads_mobile_sdk/om2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iput-object p2, p0, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    iput-object p3, p0, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iput-object p4, p0, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput p5, p0, Lads_mobile_sdk/zk2;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/zk2;

    iget-object v1, p0, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iget-object v2, p0, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    iget-object v3, p0, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iget-object v4, p0, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget v5, p0, Lads_mobile_sdk/zk2;->h:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/zk2;-><init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/j53;Lads_mobile_sdk/om2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/zk2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zk2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zk2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 84
    iget v0, v6, Lads_mobile_sdk/zk2;->c:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 85
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 86
    :cond_2
    iget-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 87
    :cond_3
    iget-object v0, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iget-object v2, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v0

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 88
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    :try_start_3
    iget-object v0, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 92
    iget-object v3, v0, Lads_mobile_sdk/al2;->f:Lads_mobile_sdk/g83;

    .line 93
    sget-object v4, Lads_mobile_sdk/s11;->P1:Lads_mobile_sdk/s11;

    iget-object v5, v6, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 565
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 566
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 567
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 568
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 569
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 570
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 571
    invoke-direct {v12, v13, v14, v15, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 572
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 573
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v13, 0x0

    if-nez v8, :cond_b

    .line 574
    invoke-static {v3, v4, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 575
    :try_start_4
    iget-object v0, v0, Lads_mobile_sdk/al2;->e:Lads_mobile_sdk/v8;

    .line 576
    invoke-virtual {v0, v5}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_5

    .line 1054
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/i01;

    .line 1055
    invoke-static {v4, v13}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1056
    :cond_5
    :try_start_5
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 1064
    :try_start_6
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1068
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_a

    .line 1070
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    .line 1076
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1082
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    .line 1083
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    .line 1084
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_7

    throw v0

    .line 1085
    :cond_7
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1086
    :cond_8
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1087
    :cond_9
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1088
    :cond_a
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1089
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1123
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1124
    :try_start_9
    iget-object v0, v0, Lads_mobile_sdk/al2;->e:Lads_mobile_sdk/v8;

    .line 1125
    invoke-virtual {v0, v5}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1639
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_c

    .line 1640
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/i01;

    .line 1641
    invoke-static {v4, v13}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1642
    :cond_c
    :try_start_a
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1643
    :goto_0
    new-instance v3, Lkotlin/Pair;

    iget-object v4, v6, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    iget-object v4, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iget-object v5, v6, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iput-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v3, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iput v2, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v4, v3, v5, v6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/al2;Lkotlin/Pair;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_d

    goto :goto_4

    :cond_d
    move-object v8, v3

    move-object v3, v0

    .line 1646
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    .line 1649
    :cond_e
    :try_start_b
    iget-object v0, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 1650
    iget-object v2, v6, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-object v4, v2

    .line 1651
    iget-object v2, v6, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    move-object v5, v4

    .line 1654
    iget v4, v6, Lads_mobile_sdk/zk2;->h:I

    move-object v11, v5

    .line 1655
    iget-object v5, v6, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    .line 1656
    iput-object v8, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v10, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iput v1, v6, Lads_mobile_sdk/zk2;->c:I

    move-object v1, v11

    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/al2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-ne v0, v7, :cond_f

    goto :goto_4

    :cond_f
    move-object v1, v8

    .line 1665
    :goto_2
    :try_start_c
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/yk2;

    iget-object v3, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    invoke-direct {v2, v3, v1, v10}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object v10, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput v9, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v0, v2, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_16

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v8

    .line 1666
    :goto_3
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v3, Lads_mobile_sdk/yk2;

    iget-object v4, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    invoke-direct {v3, v4, v1, v10}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v10, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    const/4 v1, 0x4

    iput v1, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v2, v3, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_10

    :goto_4
    return-object v7

    .line 1667
    :cond_10
    :goto_5
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_5
    move-exception v0

    .line 2170
    :try_start_d
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2174
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_15

    .line 2176
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_11

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11

    .line 2182
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2188
    :cond_11
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_14

    .line 2189
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13

    .line 2190
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_12

    throw v0

    .line 2191
    :cond_12
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2192
    :cond_13
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2193
    :cond_14
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2194
    :cond_15
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 2195
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_f
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 2196
    :goto_6
    iget-object v1, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 2197
    iget-object v1, v1, Lads_mobile_sdk/al2;->k:Lads_mobile_sdk/ur3;

    .line 2198
    check-cast v1, Lads_mobile_sdk/as3;

    const-string v2, "Persistent cache fill task failure"

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2200
    :cond_16
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
