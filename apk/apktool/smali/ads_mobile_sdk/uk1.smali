.class public final Lads_mobile_sdk/uk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/r31;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lads_mobile_sdk/eo2;

.field public final d:Lads_mobile_sdk/t91;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/rb;

.field public final g:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/ks3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;Lads_mobile_sdk/g83;Lads_mobile_sdk/rb;Lads_mobile_sdk/ex0;)V
    .locals 1

    .line 1
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 26
    iput-object p3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    .line 27
    iput-object p4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    .line 28
    iput-object p5, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 29
    iput-object p6, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    .line 30
    iput-object p7, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "clickString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string p1, ""

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 74
    sget-object v1, Lads_mobile_sdk/s11;->h0:Lads_mobile_sdk/s11;

    .line 75
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 278
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 279
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 280
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_7

    .line 281
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1

    .line 499
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 500
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_1
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 509
    :try_start_1
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 513
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_6

    .line 515
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2

    .line 521
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 527
    :cond_2
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5

    .line 528
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_4

    .line 529
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_3

    throw p1

    .line 530
    :cond_3
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 531
    :cond_4
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 532
    :cond_5
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 533
    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 534
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 568
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 569
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 822
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_8

    .line 823
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 824
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 825
    :cond_8
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_3
    move-exception p1

    .line 833
    :try_start_4
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 837
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_d

    .line 839
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9

    .line 845
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 851
    :cond_9
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c

    .line 852
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    .line 853
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_a

    throw p1

    .line 854
    :cond_a
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 855
    :cond_b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 856
    :cond_c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 857
    :cond_d
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 858
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getViewSignals()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 48
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 49
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 104
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_6

    .line 105
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 172
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_0

    .line 173
    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 174
    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 183
    :try_start_1
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 187
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5

    .line 189
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 201
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    .line 202
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 203
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2

    throw v1

    .line 204
    :cond_2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 205
    :cond_3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 206
    :cond_4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 207
    :cond_5
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 208
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 242
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 346
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7

    .line 347
    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 348
    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 349
    :cond_7
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_3
    move-exception v1

    .line 357
    :try_start_4
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 361
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 363
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 369
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 375
    :cond_8
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 376
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 377
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v1

    .line 378
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 379
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 380
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 381
    :cond_c
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    .line 382
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getViewSignalsJson()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 57
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 58
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 190
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 192
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v5, "key"

    const-string v6, "gads:add_placement_id_in_view_signals:enabled"

    const/4 v7, 0x0

    if-nez v4, :cond_6

    .line 193
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 215
    :cond_0
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    iget-object v4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/rb;->a(Lads_mobile_sdk/r31;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 362
    :try_start_2
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 366
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5

    .line 368
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    .line 374
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 380
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    .line 381
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 382
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2

    throw v1

    .line 383
    :cond_2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 384
    :cond_3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 385
    :cond_4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 386
    :cond_5
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 403
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 409
    :try_start_4
    iget-object v1, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 428
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 430
    :cond_7
    :try_start_5
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    iget-object v4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/rb;->a(Lads_mobile_sdk/r31;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_3
    move-exception v1

    .line 614
    :try_start_6
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 618
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 620
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 626
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 632
    :cond_8
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 633
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 634
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v1

    .line 635
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 636
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 637
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 638
    :cond_c
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    .line 655
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final notify(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v0

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-string v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lads_mobile_sdk/w31;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lads_mobile_sdk/w31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v1, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final notifyResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "resultJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v0, Lads_mobile_sdk/x31;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lads_mobile_sdk/x31;-><init>(Lads_mobile_sdk/g41;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
