.class public final Lads_mobile_sdk/xc0;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zc0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xc0;->a:Lads_mobile_sdk/zc0;

    .line 59
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 6

    .line 62
    iget-object p2, p0, Lads_mobile_sdk/xc0;->a:Lads_mobile_sdk/zc0;

    .line 63
    iget-object p2, p2, Lads_mobile_sdk/zc0;->c:Lads_mobile_sdk/g83;

    .line 64
    sget-object v0, Lads_mobile_sdk/s11;->C0:Lads_mobile_sdk/s11;

    .line 65
    new-instance v1, Lads_mobile_sdk/ks3;

    .line 66
    new-instance v2, Lads_mobile_sdk/n03;

    invoke-direct {v2}, Lads_mobile_sdk/n03;-><init>()V

    .line 67
    new-instance v3, Lads_mobile_sdk/tn1;

    invoke-direct {v3}, Lads_mobile_sdk/tn1;-><init>()V

    .line 68
    new-instance v4, Lads_mobile_sdk/m33;

    invoke-direct {v4}, Lads_mobile_sdk/m33;-><init>()V

    .line 69
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 70
    invoke-direct {v1, v2, v3, v4, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v3

    .line 73
    iget-object v3, v3, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_6

    .line 74
    invoke-static {p2, v0, v2, v1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p2

    .line 75
    :try_start_0
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/uj2;->A:Ljava/lang/Integer;

    .line 76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lads_mobile_sdk/i01;

    .line 142
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    invoke-static {p2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    :try_start_1
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 155
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_5

    .line 157
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 169
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_4

    .line 170
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_3

    .line 171
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_2

    throw p1

    .line 172
    :cond_2
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_3
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 174
    :cond_4
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 175
    :cond_5
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 176
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 210
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 211
    :try_start_3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/uj2;->A:Ljava/lang/Integer;

    .line 212
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 313
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_7

    .line 314
    check-cast p1, Lads_mobile_sdk/i01;

    .line 315
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 316
    :cond_7
    invoke-static {p2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 324
    :try_start_4
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 328
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_c

    .line 330
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 336
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 342
    :cond_8
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_b

    .line 343
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    .line 344
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_9

    throw p1

    .line 345
    :cond_9
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 346
    :cond_a
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 347
    :cond_b
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 348
    :cond_c
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 349
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
