.class public final Lads_mobile_sdk/ph1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/lh1;

.field public d:Lads_mobile_sdk/uj2;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/th1;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iput p2, p0, Lads_mobile_sdk/ph1;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/ph1;

    iget-object v0, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iget v1, p0, Lads_mobile_sdk/ph1;->g:I

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ph1;-><init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ph1;

    iget-object v0, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iget v1, p0, Lads_mobile_sdk/ph1;->g:I

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ph1;-><init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ph1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v2, v1, Lads_mobile_sdk/ph1;->e:I

    const-string v4, "build(...)"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v0, v1, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    iget-object v2, v1, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iget-object v5, v1, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, v1, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    move-object/from16 v16, v4

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v11, v1

    goto/16 :goto_9

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    iget-object v2, v1, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iget-object v5, v1, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, v1, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v1

    move-object/from16 v16, v4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v11, v1

    goto/16 :goto_2

    .line 63
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object v2, v1, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    .line 65
    iget-object v8, v2, Lads_mobile_sdk/th1;->g:Lads_mobile_sdk/g83;

    .line 66
    sget-object v9, Lads_mobile_sdk/s11;->N0:Lads_mobile_sdk/s11;

    .line 67
    iget v10, v1, Lads_mobile_sdk/ph1;->g:I

    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 108
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 109
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 110
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 111
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 112
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 113
    invoke-direct {v12, v13, v14, v15, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 114
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 115
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v13, "install_version"

    const-string v14, "install_begin_timestamp_server_seconds"

    const-string v15, "referrer_click_timestamp_server_seconds"

    const-string v3, "google_play_instant"

    const-string v5, "install_begin_timestamp_seconds"

    const-string v6, "referrer_click_timestamp_seconds"

    move-object/from16 p1, v7

    const-string v7, "install_referrer"

    move-object/from16 v16, v4

    const-string v4, "builder"

    move-object/from16 v17, v0

    const-string v0, "newBuilder(...)"

    const-string v18, ""

    const-string v1, "value"

    if-nez p1, :cond_13

    .line 116
    invoke-static {v8, v9, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 117
    :try_start_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v9

    invoke-virtual {v9}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v9

    .line 160
    invoke-static {}, Lads_mobile_sdk/kh1;->v()Lads_mobile_sdk/ih1;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lads_mobile_sdk/lh1;

    .line 192
    invoke-direct {v0, v11}, Lads_mobile_sdk/lh1;-><init>(Lads_mobile_sdk/ih1;)V

    const/4 v4, -0x1

    if-eq v10, v4, :cond_8

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    if-eq v10, v4, :cond_6

    const/4 v4, 0x2

    if-eq v10, v4, :cond_5

    const/4 v4, 0x3

    if-eq v10, v4, :cond_4

    const/4 v4, 0x4

    if-eq v10, v4, :cond_3

    .line 193
    sget-object v4, Lads_mobile_sdk/jh1;->b:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 194
    :cond_3
    sget-object v4, Lads_mobile_sdk/jh1;->g:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 195
    :cond_4
    sget-object v4, Lads_mobile_sdk/jh1;->f:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 196
    :cond_5
    sget-object v4, Lads_mobile_sdk/jh1;->e:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 197
    :cond_6
    sget-object v4, Lads_mobile_sdk/jh1;->d:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 198
    :cond_7
    sget-object v4, Lads_mobile_sdk/jh1;->c:Lads_mobile_sdk/jh1;

    goto :goto_0

    .line 203
    :cond_8
    sget-object v4, Lads_mobile_sdk/jh1;->h:Lads_mobile_sdk/jh1;

    .line 204
    :goto_0
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v11, v4}, Lads_mobile_sdk/ih1;->a(Lads_mobile_sdk/jh1;)V

    .line 369
    iget-object v4, v2, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 370
    invoke-virtual {v4}, Lads_mobile_sdk/eh1;->a()Lads_mobile_sdk/f23;

    move-result-object v4

    if-nez v10, :cond_b

    if-eqz v4, :cond_b

    .line 371
    iget-object v10, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    move-object/from16 v7, v18

    .line 373
    :cond_9
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v11, v7}, Lads_mobile_sdk/ih1;->a(Ljava/lang/String;)V

    .line 419
    iget-object v7, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 420
    invoke-virtual {v11, v6, v7}, Lads_mobile_sdk/ih1;->c(J)V

    .line 421
    iget-object v6, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 422
    invoke-virtual {v11, v5, v6}, Lads_mobile_sdk/ih1;->a(J)V

    .line 423
    iget-object v5, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 424
    invoke-virtual {v11, v3}, Lads_mobile_sdk/ih1;->a(Z)V

    .line 425
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 426
    invoke-virtual {v11, v5, v6}, Lads_mobile_sdk/ih1;->d(J)V

    .line 427
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 428
    invoke-virtual {v11, v5, v6}, Lads_mobile_sdk/ih1;->b(J)V

    .line 429
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move-object/from16 v3, v18

    .line 431
    :cond_a
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v11, v3}, Lads_mobile_sdk/ih1;->b(Ljava/lang/String;)V

    .line 579
    iget-object v1, v2, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    .line 580
    sget-object v2, Lads_mobile_sdk/nh1;->a:Lads_mobile_sdk/nh1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v11, p0

    :try_start_3
    iput-object v8, v11, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    iput-object v8, v11, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iput-object v0, v11, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iput-object v9, v11, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    const/4 v4, 0x1

    iput v4, v11, Lads_mobile_sdk/ph1;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    invoke-static {v1, v2, v11}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v12, v17

    if-ne v1, v12, :cond_c

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_b
    move-object/from16 v11, p0

    :cond_c
    move-object v2, v0

    move-object v5, v8

    move-object v6, v5

    move-object v0, v9

    .line 582
    :goto_1
    :try_start_4
    iget-object v1, v2, Lads_mobile_sdk/lh1;->a:Lads_mobile_sdk/ih1;

    .line 583
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    move-object/from16 v8, v16

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/kh1;

    .line 584
    iput-object v1, v0, Lads_mobile_sdk/uj2;->J:Lads_mobile_sdk/kh1;

    .line 600
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 629
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_d

    .line 630
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 631
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_d
    const/4 v0, 0x0

    .line 632
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    :goto_2
    move-object v8, v6

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v11, p0

    :goto_3
    move-object v5, v8

    .line 642
    :goto_4
    :try_start_5
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 646
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_12

    .line 648
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    .line 654
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 660
    :cond_e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_11

    .line 661
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_10

    .line 662
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_f

    throw v0

    .line 663
    :cond_f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 664
    :cond_10
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 665
    :cond_11
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 666
    :cond_12
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 667
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    move-object/from16 v11, p0

    move-object/from16 v12, v17

    .line 703
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v12, 0x1

    invoke-static {v9, v8, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 704
    :try_start_7
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v9

    invoke-virtual {v9}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v9

    .line 747
    invoke-static {}, Lads_mobile_sdk/kh1;->v()Lads_mobile_sdk/ih1;

    move-result-object v12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    new-instance v0, Lads_mobile_sdk/lh1;

    .line 779
    invoke-direct {v0, v12}, Lads_mobile_sdk/lh1;-><init>(Lads_mobile_sdk/ih1;)V

    const/4 v4, -0x1

    if-eq v10, v4, :cond_19

    if-eqz v10, :cond_18

    const/4 v4, 0x1

    if-eq v10, v4, :cond_17

    const/4 v4, 0x2

    if-eq v10, v4, :cond_16

    const/4 v4, 0x3

    if-eq v10, v4, :cond_15

    const/4 v4, 0x4

    if-eq v10, v4, :cond_14

    .line 780
    sget-object v4, Lads_mobile_sdk/jh1;->b:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 781
    :cond_14
    sget-object v4, Lads_mobile_sdk/jh1;->g:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 782
    :cond_15
    sget-object v4, Lads_mobile_sdk/jh1;->f:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 783
    :cond_16
    sget-object v4, Lads_mobile_sdk/jh1;->e:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 784
    :cond_17
    sget-object v4, Lads_mobile_sdk/jh1;->d:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 785
    :cond_18
    sget-object v4, Lads_mobile_sdk/jh1;->c:Lads_mobile_sdk/jh1;

    goto :goto_5

    .line 790
    :cond_19
    sget-object v4, Lads_mobile_sdk/jh1;->h:Lads_mobile_sdk/jh1;

    .line 791
    :goto_5
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    invoke-virtual {v12, v4}, Lads_mobile_sdk/ih1;->a(Lads_mobile_sdk/jh1;)V

    .line 956
    iget-object v4, v2, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 957
    invoke-virtual {v4}, Lads_mobile_sdk/eh1;->a()Lads_mobile_sdk/f23;

    move-result-object v4

    if-nez v10, :cond_1c

    if-eqz v4, :cond_1c

    .line 958
    iget-object v10, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1a

    move-object/from16 v7, v18

    .line 960
    :cond_1a
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v12, v7}, Lads_mobile_sdk/ih1;->a(Ljava/lang/String;)V

    .line 1006
    iget-object v7, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1007
    invoke-virtual {v12, v6, v7}, Lads_mobile_sdk/ih1;->c(J)V

    .line 1008
    iget-object v6, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1009
    invoke-virtual {v12, v5, v6}, Lads_mobile_sdk/ih1;->a(J)V

    .line 1010
    iget-object v5, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1011
    invoke-virtual {v12, v3}, Lads_mobile_sdk/ih1;->a(Z)V

    .line 1012
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1013
    invoke-virtual {v12, v5, v6}, Lads_mobile_sdk/ih1;->d(J)V

    .line 1014
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1015
    invoke-virtual {v12, v5, v6}, Lads_mobile_sdk/ih1;->b(J)V

    .line 1016
    iget-object v3, v4, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    move-object/from16 v3, v18

    .line 1018
    :cond_1b
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v12, v3}, Lads_mobile_sdk/ih1;->b(Ljava/lang/String;)V

    .line 1166
    iget-object v1, v2, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    .line 1167
    sget-object v2, Lads_mobile_sdk/nh1;->a:Lads_mobile_sdk/nh1;

    iput-object v8, v11, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    iput-object v8, v11, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iput-object v0, v11, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iput-object v9, v11, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    const/4 v4, 0x2

    iput v4, v11, Lads_mobile_sdk/ph1;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    invoke-static {v1, v2, v11}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v12, v17

    if-ne v1, v12, :cond_1c

    :goto_6
    return-object v12

    :cond_1c
    move-object v2, v0

    move-object v5, v8

    move-object v6, v5

    move-object v0, v9

    .line 1169
    :goto_7
    :try_start_8
    iget-object v1, v2, Lads_mobile_sdk/lh1;->a:Lads_mobile_sdk/ih1;

    .line 1170
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    move-object/from16 v8, v16

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/kh1;

    .line 1171
    iput-object v1, v0, Lads_mobile_sdk/uj2;->J:Lads_mobile_sdk/kh1;

    .line 1187
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1253
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1d

    .line 1254
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 1255
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_1d
    const/4 v0, 0x0

    .line 1256
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1257
    :goto_8
    iget-object v1, v11, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    .line 1258
    iget-object v2, v1, Lads_mobile_sdk/th1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1259
    new-instance v5, Lads_mobile_sdk/oh1;

    invoke-direct {v5, v1, v0}, Lads_mobile_sdk/oh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_7
    move-exception v0

    :goto_9
    move-object v8, v6

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v5, v8

    .line 1329
    :goto_a
    :try_start_9
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1333
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_22

    .line 1335
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1e

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1e

    .line 1341
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1347
    :cond_1e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_21

    .line 1348
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_20

    .line 1349
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1f

    throw v0

    .line 1350
    :cond_1f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1351
    :cond_20
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1352
    :cond_21
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1353
    :cond_22
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 1354
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
