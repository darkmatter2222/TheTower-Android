.class public final Lads_mobile_sdk/xn2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ao2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ao2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/ao2;->e:Lads_mobile_sdk/g83;

    .line 4
    sget-object v1, Lads_mobile_sdk/s11;->Z1:Lads_mobile_sdk/s11;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    .line 7
    iget-object v4, v3, Lads_mobile_sdk/ao2;->f:Lads_mobile_sdk/ks3;

    .line 8
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_6

    .line 10
    invoke-static {v0, v1, v2, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {v3}, Lads_mobile_sdk/ao2;->a()V

    .line 12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_0

    .line 261
    check-cast v1, Lads_mobile_sdk/i01;

    .line 262
    invoke-static {v1, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 271
    :try_start_1
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 275
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5

    .line 277
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 289
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    .line 290
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 291
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2

    throw v1

    .line 292
    :cond_2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 293
    :cond_3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 294
    :cond_4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 295
    :cond_5
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 296
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 330
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 331
    :try_start_3
    invoke-virtual {v3}, Lads_mobile_sdk/ao2;->a()V

    .line 332
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 617
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7

    .line 618
    check-cast v1, Lads_mobile_sdk/i01;

    .line 619
    invoke-static {v1, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 620
    :cond_7
    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 621
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v1

    .line 622
    :try_start_4
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 626
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 628
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 634
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 640
    :cond_8
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 641
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 642
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v1

    .line 643
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 644
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 645
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 646
    :cond_c
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    .line 647
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
