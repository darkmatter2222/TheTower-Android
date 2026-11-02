.class public final Lads_mobile_sdk/k6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/g83;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;)V
    .locals 1

    .line 2
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    .line 33
    iput-object p3, p0, Lads_mobile_sdk/k6;->b:Lads_mobile_sdk/tx;

    .line 34
    iput-object p2, p0, Lads_mobile_sdk/k6;->c:Lads_mobile_sdk/g83;

    .line 38
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k6;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/collections/ArrayDeque;
    .locals 1

    .line 39
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V
    .locals 10

    .line 323
    const-string v0, "violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    const-string v1, "gads:preload_validator:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    const-string v1, "gads:preload_validator_logging:enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 558
    iget-object v1, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    const-string v5, "gads:preload_validator_cuj:enabled"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1, v5, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 577
    :cond_1
    invoke-virtual {p0, p2, p1}, Lads_mobile_sdk/k6;->a(Ljava/lang/String;Lads_mobile_sdk/bu2;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 582
    invoke-virtual {p1, p2, p4}, Lads_mobile_sdk/bu2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 583
    sget-object v0, Lads_mobile_sdk/hy3;->a:[Lads_mobile_sdk/hy3;

    .line 584
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 585
    invoke-static {p4, v2}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz v1, :cond_11

    .line 586
    iget-object p4, p0, Lads_mobile_sdk/k6;->c:Lads_mobile_sdk/g83;

    sget-object v0, Lads_mobile_sdk/s11;->a2:Lads_mobile_sdk/s11;

    .line 621
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 622
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 623
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 624
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 625
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 626
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 627
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 628
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 629
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    const-string v6, "build(...)"

    const-string v7, "value"

    const-string v8, "builder"

    const-string v9, "newBuilder(...)"

    if-nez v4, :cond_a

    .line 630
    invoke-static {p4, v0, v1, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p4

    .line 631
    :try_start_0
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 671
    invoke-static {}, Lads_mobile_sdk/wt2;->v()Lads_mobile_sdk/ut2;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iget-object p1, p1, Lads_mobile_sdk/bu2;->b:Lads_mobile_sdk/vt2;

    .line 674
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ut2;->a(Lads_mobile_sdk/vt2;)V

    .line 720
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/wt2;

    .line 721
    iput-object p1, v1, Lads_mobile_sdk/uj2;->S:Lads_mobile_sdk/wt2;

    .line 722
    iget-object p1, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 723
    iget-object p1, p1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iput-object p2, p1, Lads_mobile_sdk/n03;->e:Ljava/lang/String;

    .line 724
    iput-object p3, p1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 725
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 761
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_4

    .line 762
    check-cast p1, Lads_mobile_sdk/i01;

    .line 763
    invoke-static {p1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_4
    invoke-static {p4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 774
    :try_start_1
    invoke-virtual {p4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 778
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_9

    .line 780
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_5

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5

    .line 786
    invoke-virtual {p4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 792
    :cond_5
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_8

    .line 793
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_7

    .line 794
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_6

    throw p1

    .line 795
    :cond_6
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 796
    :cond_7
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 797
    :cond_8
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 798
    :cond_9
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 799
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 835
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p4

    .line 836
    :try_start_3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 876
    invoke-static {}, Lads_mobile_sdk/wt2;->v()Lads_mobile_sdk/ut2;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    iget-object p1, p1, Lads_mobile_sdk/bu2;->b:Lads_mobile_sdk/vt2;

    .line 879
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ut2;->a(Lads_mobile_sdk/vt2;)V

    .line 925
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/wt2;

    .line 926
    iput-object p1, v1, Lads_mobile_sdk/uj2;->S:Lads_mobile_sdk/wt2;

    .line 927
    iget-object p1, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 928
    iget-object p1, p1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iput-object p2, p1, Lads_mobile_sdk/n03;->e:Ljava/lang/String;

    .line 929
    iput-object p3, p1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 930
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1003
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_b

    .line 1004
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1005
    invoke-static {p1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1006
    :cond_b
    invoke-static {p4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 1014
    :try_start_4
    invoke-virtual {p4, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1018
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_10

    .line 1020
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_c

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_c

    .line 1026
    invoke-virtual {p4, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1032
    :cond_c
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_f

    .line 1033
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_e

    .line 1034
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_d

    throw p1

    .line 1035
    :cond_d
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1036
    :cond_e
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 1037
    :cond_f
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 1038
    :cond_10
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 1039
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception p2

    invoke-static {p4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_11
    :goto_0
    return-void
.end method

.method public final a(Lads_mobile_sdk/j53;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "preloadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->q0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->s0()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->t0()I

    move-result v2

    .line 8
    iget-object v3, p0, Lads_mobile_sdk/k6;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lads_mobile_sdk/i6;->a:Lads_mobile_sdk/i6;

    new-instance v5, Lads_mobile_sdk/k6$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lads_mobile_sdk/k6$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "computeIfAbsent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v4, p0, Lads_mobile_sdk/k6;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v4

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v6}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    .line 12
    :goto_0
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/time/Duration;

    invoke-virtual {v6}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v8

    invoke-static {v8, v9, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v6

    if-lez v6, :cond_1

    .line 13
    invoke-virtual {v3, v7}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_2

    .line 17
    invoke-virtual {v3, v7}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v4, v2, :cond_3

    const/4 v7, 0x1

    .line 20
    :cond_3
    monitor-exit v3

    if-eqz v7, :cond_4

    .line 33
    sget-object v3, Lads_mobile_sdk/bu2;->f:Lads_mobile_sdk/bu2;

    .line 36
    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checks in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v3, p2, p1, v0}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v3

    throw p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/Integer;II)V
    .locals 2

    .line 1040
    const-string v0, "preloadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->r0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1138
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->i()I

    move-result v0

    if-eqz p3, :cond_1

    .line 1139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1141
    sget-object p4, Lads_mobile_sdk/bu2;->g:Lads_mobile_sdk/bu2;

    .line 1145
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "Buffer size "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " exceeds maximum allowed buffer size "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "."

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1146
    invoke-virtual {p0, p4, p1, p2, p3}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1154
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->f()I

    move-result p3

    :goto_0
    add-int/2addr p4, p3

    if-le p4, p5, :cond_3

    .line 1158
    sget-object p3, Lads_mobile_sdk/bu2;->g:Lads_mobile_sdk/bu2;

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total configured buffer size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ") across all preloaders exceeds maximum allowed limit ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ")."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1163
    invoke-virtual {p0, p3, p1, p2, p4}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/bu2;)Z
    .locals 3

    .line 320
    iget-object v0, p0, Lads_mobile_sdk/k6;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 321
    sget-object v1, Lads_mobile_sdk/j6;->a:Lads_mobile_sdk/j6;

    new-instance v2, Lads_mobile_sdk/k6$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lads_mobile_sdk/k6$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 322
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lads_mobile_sdk/j53;Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lads_mobile_sdk/k6;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lads_mobile_sdk/wq2;->b:Lads_mobile_sdk/vq2;

    .line 238
    sget-object v0, Lads_mobile_sdk/wq2;->c:Ljava/lang/ThreadLocal;

    .line 239
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/uq2;

    if-nez v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, v0, Lads_mobile_sdk/uq2;->a:Ljava/lang/String;

    .line 241
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, v0, Lads_mobile_sdk/uq2;->b:Lads_mobile_sdk/j53;

    if-eq v1, p1, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, v0, Lads_mobile_sdk/uq2;->c:Lads_mobile_sdk/xq2;

    .line 244
    sget-object v1, Lads_mobile_sdk/xq2;->b:Lads_mobile_sdk/xq2;

    if-ne v0, v1, :cond_3

    .line 246
    sget-object v0, Lads_mobile_sdk/bu2;->d:Lads_mobile_sdk/bu2;

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v0, p2, p1, v1}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Lads_mobile_sdk/j53;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "preloadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/k6;->b(Lads_mobile_sdk/j53;Ljava/lang/String;)V

    return-void
.end method
