.class public final Lads_mobile_sdk/un2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/do2;

.field public final synthetic d:Lads_mobile_sdk/ao2;

.field public final synthetic e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    iput-object p2, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    iput-object p3, p0, Lads_mobile_sdk/un2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/un2;

    iget-object v0, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    iget-object v1, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    iget-object v2, p0, Lads_mobile_sdk/un2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/un2;-><init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/un2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/un2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/un2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 429
    iget v1, p0, Lads_mobile_sdk/un2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lads_mobile_sdk/un2;->a:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v1, v2

    .line 431
    :cond_2
    :goto_0
    iget-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1}, Lads_mobile_sdk/do2;->b()Z

    move-result p1

    const-string v4, "PipPresenter.applySnapTrajectory"

    if-eqz p1, :cond_4

    .line 432
    iget-object p1, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {p1}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/qn2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/qn2;->c()I

    move-result p1

    if-ge v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 434
    iput v1, p0, Lads_mobile_sdk/un2;->a:I

    iput v3, p0, Lads_mobile_sdk/un2;->b:I

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 436
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {p1}, Lads_mobile_sdk/ao2;->c(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/ur3;

    move-result-object p1

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 438
    const-string v1, "PiP Container failed to obtain valid size for snapping after multiple retries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 439
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v4, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 449
    :cond_4
    iget-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Landroid/view/View;

    move-object v6, p1

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    if-nez v6, :cond_6

    .line 451
    iget-object p1, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {p1}, Lads_mobile_sdk/ao2;->c(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/ur3;

    move-result-object p1

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PiP Container parent is null or not a View."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 453
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v4, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 459
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v8, p1

    .line 460
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v9, p1

    .line 461
    iget-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v10, p1

    .line 462
    iget-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v11, p1

    .line 464
    iget-object p1, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {v0}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/qn2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/qn2;->d()I

    move-result v0

    invoke-static {p1, v0}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float v12, p1

    .line 466
    iget-object v5, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    .line 468
    iget-object v7, p0, Lads_mobile_sdk/un2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 469
    invoke-static/range {v5 .. v12}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;Landroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;FFFFF)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 470
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 481
    iget-object v4, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {v4}, Lads_mobile_sdk/ao2;->b(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/g83;

    move-result-object v4

    .line 482
    sget-object v5, Lads_mobile_sdk/s11;->Y1:Lads_mobile_sdk/s11;

    .line 483
    iget-object v6, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {v6}, Lads_mobile_sdk/do2;->a()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "current_position:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lads_mobile_sdk/un2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "target_position:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v2

    aput-object v7, v8, v3

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 484
    iget-object v6, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    invoke-static {v6}, Lads_mobile_sdk/ao2;->d(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/ks3;

    move-result-object v6

    .line 485
    iget-object v7, p0, Lads_mobile_sdk/un2;->c:Lads_mobile_sdk/do2;

    iget-object v8, p0, Lads_mobile_sdk/un2;->d:Lads_mobile_sdk/ao2;

    iget-object v9, p0, Lads_mobile_sdk/un2;->e:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 544
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v10

    if-nez v10, :cond_d

    .line 545
    invoke-static {v4, v5, v2, v6}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 546
    :try_start_0
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 549
    invoke-static {v8}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/qn2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/qn2;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 550
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 552
    invoke-virtual {v7, v9}, Lads_mobile_sdk/do2;->a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V

    .line 553
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 604
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_7

    .line 605
    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_7
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 614
    :try_start_1
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 618
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_c

    .line 620
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 626
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 632
    :cond_8
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_b

    .line 633
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    .line 634
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_9

    throw p1

    .line 635
    :cond_9
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 636
    :cond_a
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 637
    :cond_b
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 638
    :cond_c
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 639
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 673
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 674
    :try_start_3
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 675
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 677
    invoke-static {v8}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/qn2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/qn2;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 678
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 680
    invoke-virtual {v7, v9}, Lads_mobile_sdk/do2;->a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V

    .line 681
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 769
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_e

    .line 770
    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 771
    :cond_e
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 772
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 864
    :try_start_4
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 868
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_13

    .line 870
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f

    .line 876
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 882
    :cond_f
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_12

    .line 883
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_11

    .line 884
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_10

    throw p1

    .line 885
    :cond_10
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 886
    :cond_11
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 887
    :cond_12
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 888
    :cond_13
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    .line 889
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
