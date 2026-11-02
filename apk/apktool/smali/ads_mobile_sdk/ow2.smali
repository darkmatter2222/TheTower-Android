.class public final Lads_mobile_sdk/ow2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/webkit/WebView;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/rb;

.field public final f:Lads_mobile_sdk/xe3;

.field public final g:Lads_mobile_sdk/vw3;

.field public final h:Lads_mobile_sdk/o21;

.field public final i:Lads_mobile_sdk/ex0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/g83;Lads_mobile_sdk/rb;Lads_mobile_sdk/ur3;Lads_mobile_sdk/xe3;Lads_mobile_sdk/vw3;Lads_mobile_sdk/o21;Lads_mobile_sdk/ex0;)V
    .locals 1

    .line 1
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "signalCache"

    invoke-static {p7, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "urlPinger"

    invoke-static {p8, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "gmaUtil"

    invoke-static {p9, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "flags"

    invoke-static {p10, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    .line 47
    iput-object p2, p0, Lads_mobile_sdk/ow2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 48
    iput-object p3, p0, Lads_mobile_sdk/ow2;->c:Lkotlin/coroutines/CoroutineContext;

    .line 49
    iput-object p4, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 50
    iput-object p5, p0, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    .line 52
    iput-object p7, p0, Lads_mobile_sdk/ow2;->f:Lads_mobile_sdk/xe3;

    .line 53
    iput-object p8, p0, Lads_mobile_sdk/ow2;->g:Lads_mobile_sdk/vw3;

    .line 54
    iput-object p9, p0, Lads_mobile_sdk/ow2;->h:Lads_mobile_sdk/o21;

    .line 55
    iput-object p10, p0, Lads_mobile_sdk/ow2;->i:Lads_mobile_sdk/ex0;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/ex0;
    .locals 0

    .line 42
    iget-object p0, p0, Lads_mobile_sdk/ow2;->i:Lads_mobile_sdk/ex0;

    return-object p0
.end method

.method public static final synthetic b(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/g83;
    .locals 0

    .line 42
    iget-object p0, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    return-object p0
.end method

.method public static final synthetic c(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/xe3;
    .locals 0

    .line 42
    iget-object p0, p0, Lads_mobile_sdk/ow2;->f:Lads_mobile_sdk/xe3;

    return-object p0
.end method

.method public static final synthetic d(Lads_mobile_sdk/ow2;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 42
    iget-object p0, p0, Lads_mobile_sdk/ow2;->c:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method


# virtual methods
.method public final a(ILkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 5

    if-gtz p1, :cond_0

    .line 207
    const-string p1, ""

    return-object p1

    .line 211
    :cond_0
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 212
    iget-object v0, p0, Lads_mobile_sdk/ow2;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 214
    const-string v2, "key"

    const/16 v3, 0x3e8

    const-string v4, "gads:max_timeout_view_click_ms"

    invoke-static {v3, v1, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 215
    sget-object v3, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    .line 216
    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 217
    invoke-static {p1, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 222
    new-instance p1, Lads_mobile_sdk/hw2;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p2, v2}, Lads_mobile_sdk/hw2;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x1

    invoke-static {v2, p1, p2, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/v01;

    .line 224
    instance-of p2, p1, Lads_mobile_sdk/q01;

    if-eqz p2, :cond_1

    check-cast p1, Lads_mobile_sdk/q01;

    .line 225
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 226
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 228
    :cond_1
    instance-of p1, p1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_2

    const-string p1, "17"

    return-object p1

    .line 229
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "clickString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string p1, ""

    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 144
    sget-object v1, Lads_mobile_sdk/s11;->h0:Lads_mobile_sdk/s11;

    .line 145
    new-instance v2, Lads_mobile_sdk/ks3;

    .line 146
    new-instance v3, Lads_mobile_sdk/n03;

    invoke-direct {v3}, Lads_mobile_sdk/n03;-><init>()V

    .line 147
    new-instance v4, Lads_mobile_sdk/tn1;

    invoke-direct {v4}, Lads_mobile_sdk/tn1;-><init>()V

    .line 148
    new-instance v5, Lads_mobile_sdk/m33;

    invoke-direct {v5}, Lads_mobile_sdk/m33;-><init>()V

    .line 149
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 150
    invoke-direct {v2, v3, v4, v5, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 153
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_7

    .line 154
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 472
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1

    .line 473
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 474
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_1
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 483
    :try_start_1
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 487
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_6

    .line 489
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2

    .line 495
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 501
    :cond_2
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5

    .line 502
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_4

    .line 503
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_3

    throw p1

    .line 504
    :cond_3
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 505
    :cond_4
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 506
    :cond_5
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 507
    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 508
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 542
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 543
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 897
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_8

    .line 898
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 899
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 900
    :cond_8
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_3
    move-exception p1

    .line 908
    :try_start_4
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 912
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_d

    .line 914
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9

    .line 920
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 926
    :cond_9
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c

    .line 927
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    .line 928
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_a

    throw p1

    .line 929
    :cond_a
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 930
    :cond_b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 931
    :cond_c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 932
    :cond_d
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 933
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getClickSignalsWithTimeout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "clickString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 154
    sget-object v1, Lads_mobile_sdk/s11;->h0:Lads_mobile_sdk/s11;

    .line 155
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v2

    .line 537
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 547
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v4

    const/4 v5, 0x6

    const-string v6, " ms"

    const-string v7, "17"

    const/4 v8, 0x0

    const-string v9, "Timeout after "

    if-nez v4, :cond_7

    .line 548
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 549
    :try_start_0
    new-instance v1, Lads_mobile_sdk/iw2;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/iw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lads_mobile_sdk/ow2;->a(ILkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 944
    :cond_0
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_1

    .line 945
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/i01;

    invoke-static {p2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :cond_1
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 954
    :try_start_1
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 958
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_6

    .line 960
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_2

    .line 966
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 972
    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_5

    .line 973
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_4

    .line 974
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_3

    throw p1

    .line 975
    :cond_3
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 976
    :cond_4
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 977
    :cond_5
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 978
    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 979
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 1013
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1014
    :try_start_3
    new-instance v1, Lads_mobile_sdk/iw2;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/iw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lads_mobile_sdk/ow2;->a(ILkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    .line 1015
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1446
    :cond_8
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_9

    .line 1447
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/i01;

    invoke-static {p2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1448
    :cond_9
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_3
    move-exception p1

    .line 1456
    :try_start_4
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1460
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_e

    .line 1462
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_a

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_a

    .line 1468
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1474
    :cond_a
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_d

    .line 1475
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_c

    .line 1476
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_b

    throw p1

    .line 1477
    :cond_b
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1478
    :cond_c
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 1479
    :cond_d
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 1480
    :cond_e
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 1481
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final getQueryInfo()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lads_mobile_sdk/ow2;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/lw2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lads_mobile_sdk/lw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    .line 69
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 70
    const-string v5, "<this>"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getViewSignals()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 118
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 119
    new-instance v2, Lads_mobile_sdk/ks3;

    .line 120
    new-instance v3, Lads_mobile_sdk/n03;

    invoke-direct {v3}, Lads_mobile_sdk/n03;-><init>()V

    .line 121
    new-instance v4, Lads_mobile_sdk/tn1;

    invoke-direct {v4}, Lads_mobile_sdk/tn1;-><init>()V

    .line 122
    new-instance v5, Lads_mobile_sdk/m33;

    invoke-direct {v5}, Lads_mobile_sdk/m33;-><init>()V

    .line 123
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 124
    invoke-direct {v2, v3, v4, v5, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 125
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 126
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 127
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_6

    .line 128
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 296
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_0

    .line 297
    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 298
    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 307
    :try_start_1
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 311
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5

    .line 313
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    .line 319
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 325
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    .line 326
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 327
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2

    throw v1

    .line 328
    :cond_2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 329
    :cond_3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 330
    :cond_4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 331
    :cond_5
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 332
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/ow2;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 571
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7

    .line 572
    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 573
    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 574
    :cond_7
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_3
    move-exception v1

    .line 582
    :try_start_4
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 586
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 588
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 594
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 600
    :cond_8
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 601
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 602
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v1

    .line 603
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 604
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 605
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 606
    :cond_c
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    .line 607
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getViewSignalsWithTimeout(I)Ljava/lang/String;
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 126
    iget-object v0, p0, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 127
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 128
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v2

    .line 361
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 371
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v4

    const/4 v5, 0x6

    const-string v6, " ms"

    const-string v7, "17"

    const/4 v8, 0x0

    const-string v9, "Timeout after "

    if-nez v4, :cond_7

    .line 372
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 373
    :try_start_0
    new-instance v1, Lads_mobile_sdk/mw2;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mw2;-><init>(Lads_mobile_sdk/ow2;)V

    invoke-virtual {p0, p1, v1}, Lads_mobile_sdk/ow2;->a(ILkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 619
    :cond_0
    instance-of p1, v1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_1

    .line 620
    move-object p1, v1

    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :cond_1
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 629
    :try_start_1
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 633
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_6

    .line 635
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2

    .line 641
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 647
    :cond_2
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5

    .line 648
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_4

    .line 649
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_3

    throw p1

    .line 650
    :cond_3
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 651
    :cond_4
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 652
    :cond_5
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 653
    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 654
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 688
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 689
    :try_start_3
    new-instance v1, Lads_mobile_sdk/mw2;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mw2;-><init>(Lads_mobile_sdk/ow2;)V

    invoke-virtual {p0, p1, v1}, Lads_mobile_sdk/ow2;->a(ILkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 972
    :cond_8
    instance-of p1, v1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_9

    .line 973
    move-object p1, v1

    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 974
    :cond_9
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_3
    move-exception p1

    .line 982
    :try_start_4
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 986
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e

    .line 988
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 994
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1000
    :cond_a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 1001
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 1002
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw p1

    .line 1003
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1004
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1005
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1006
    :cond_e
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 1007
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final recordClick(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "clickUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/ow2;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/nw2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lads_mobile_sdk/nw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    .line 187
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 188
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final reportTouchEvent(Ljava/lang/String;)V
    .locals 30
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    const-string v2, "touchJson"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v2, v1, Lads_mobile_sdk/ow2;->d:Lads_mobile_sdk/g83;

    .line 201
    sget-object v3, Lads_mobile_sdk/s11;->X1:Lads_mobile_sdk/s11;

    .line 202
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 203
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 204
    new-instance v6, Lads_mobile_sdk/tn1;

    invoke-direct {v6}, Lads_mobile_sdk/tn1;-><init>()V

    .line 205
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 206
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 207
    invoke-direct {v4, v5, v6, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 208
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 209
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 210
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v7, "inputEvent"

    const-string v8, "obtain(...)"

    const-string v10, "type"

    const-string v11, "force"

    const-string v12, "duration_ms"

    const-string v13, "y"

    const-string v14, "x"

    const-string v15, "exception"

    const/4 v9, 0x1

    if-nez v6, :cond_a

    .line 211
    invoke-static {v2, v3, v5, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 212
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 213
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 214
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 215
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    .line 216
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v23

    .line 217
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v9, :cond_2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    const/16 v20, -0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x3

    goto :goto_0

    :cond_1
    const/16 v20, 0x2

    goto :goto_0

    :cond_2
    move/from16 v20, v9

    goto :goto_0

    :cond_3
    const/16 v20, 0x0

    .line 219
    :goto_0
    iget-object v0, v1, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    int-to-long v5, v5

    int-to-float v3, v3

    int-to-float v4, v4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v16, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v18, v5

    .line 220
    invoke-static/range {v16 .. v29}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lads_mobile_sdk/rb;->g()Lads_mobile_sdk/fa;

    move-result-object v0

    invoke-virtual {v0, v3}, Lads_mobile_sdk/fa;->a(Landroid/view/InputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 374
    :try_start_1
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 379
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 380
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 789
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_4

    .line 790
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 791
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    const/4 v3, 0x0

    .line 792
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    .line 800
    :try_start_2
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 804
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_9

    .line 806
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_5

    .line 812
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 818
    :cond_5
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_8

    .line 819
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_7

    .line 820
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_6

    throw v0

    .line 821
    :cond_6
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 822
    :cond_7
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 823
    :cond_8
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 824
    :cond_9
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 825
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 859
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 860
    :try_start_4
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 861
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 862
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 863
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    .line 864
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v23

    .line 865
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    if-eqz v0, :cond_d

    if-eq v0, v9, :cond_c

    const/4 v6, 0x2

    if-eq v0, v6, :cond_b

    const/4 v9, 0x3

    if-eq v0, v9, :cond_c

    const/16 v20, -0x1

    goto :goto_2

    :cond_b
    move/from16 v20, v6

    goto :goto_2

    :cond_c
    move/from16 v20, v9

    goto :goto_2

    :cond_d
    const/16 v20, 0x0

    .line 867
    :goto_2
    iget-object v0, v1, Lads_mobile_sdk/ow2;->e:Lads_mobile_sdk/rb;

    int-to-long v5, v5

    int-to-float v3, v3

    int-to-float v4, v4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v16, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v18, v5

    .line 868
    invoke-static/range {v16 .. v29}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0}, Lads_mobile_sdk/rb;->g()Lads_mobile_sdk/fa;

    move-result-object v0

    invoke-virtual {v0, v3}, Lads_mobile_sdk/fa;->a(Landroid/view/InputEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 1022
    :try_start_5
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 1026
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 1027
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1028
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1474
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_e

    .line 1475
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 1476
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_e
    const/4 v3, 0x0

    .line 1477
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :catchall_5
    move-exception v0

    .line 1485
    :try_start_6
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1489
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_13

    .line 1491
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_f

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_f

    .line 1497
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1503
    :cond_f
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_12

    .line 1504
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_11

    .line 1505
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_10

    throw v0

    .line 1506
    :cond_10
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1507
    :cond_11
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1508
    :cond_12
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1509
    :cond_13
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 1510
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
