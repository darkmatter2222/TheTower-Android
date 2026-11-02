.class public final Lads_mobile_sdk/k70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/e01;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/zw3;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/ja1;

.field public final g:Lads_mobile_sdk/cn0;

.field public final h:Lads_mobile_sdk/rz;

.field public i:Lads_mobile_sdk/uv;

.field public j:Lads_mobile_sdk/vk0;

.field public final k:Lkotlinx/coroutines/sync/Mutex;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;

.field public final n:Lkotlinx/coroutines/CompletableJob;

.field public final o:Lkotlinx/coroutines/CompletableJob;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/sz;Lads_mobile_sdk/zw3;Landroid/content/Context;Lads_mobile_sdk/g83;Lads_mobile_sdk/ja1;Lads_mobile_sdk/cn0;)V
    .locals 1

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "concurrencyObjects"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "userAgentProvider"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lads_mobile_sdk/k70;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 86
    iput-object p3, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    .line 88
    iput-object p5, p0, Lads_mobile_sdk/k70;->c:Lads_mobile_sdk/zw3;

    .line 89
    iput-object p6, p0, Lads_mobile_sdk/k70;->d:Landroid/content/Context;

    .line 90
    iput-object p7, p0, Lads_mobile_sdk/k70;->e:Lads_mobile_sdk/g83;

    .line 91
    iput-object p8, p0, Lads_mobile_sdk/k70;->f:Lads_mobile_sdk/ja1;

    .line 92
    iput-object p9, p0, Lads_mobile_sdk/k70;->g:Lads_mobile_sdk/cn0;

    .line 94
    invoke-virtual {p4}, Lads_mobile_sdk/sz;->a()Lads_mobile_sdk/rz;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/k70;->h:Lads_mobile_sdk/rz;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 100
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/k70;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 103
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k70;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k70;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/k70;->n:Lkotlinx/coroutines/CompletableJob;

    .line 110
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/k70;->o:Lkotlinx/coroutines/CompletableJob;

    .line 112
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k70;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k70;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance p1, Lads_mobile_sdk/a70;

    invoke-direct {p1, p0}, Lads_mobile_sdk/a70;-><init>(Lads_mobile_sdk/k70;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/k70;->r:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/k70;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lads_mobile_sdk/k70;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/k70;Lorg/chromium/net/CronetEngine$Builder;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    instance-of v0, p3, Lads_mobile_sdk/j70;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/j70;

    iget v1, v0, Lads_mobile_sdk/j70;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j70;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/j70;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/j70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/j70;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 814
    iget v2, v0, Lads_mobile_sdk/j70;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/j70;->d:Lorg/chromium/net/CronetEngine$Builder;

    iget-object p2, v0, Lads_mobile_sdk/j70;->c:Ljava/lang/Long;

    iget-object p0, v0, Lads_mobile_sdk/j70;->b:Lorg/chromium/net/CronetEngine$Builder;

    iget-object v0, v0, Lads_mobile_sdk/j70;->a:Lads_mobile_sdk/k70;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, v0

    move-object v0, p3

    move-object p3, v7

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 819
    iget-object p3, p0, Lads_mobile_sdk/k70;->c:Lads_mobile_sdk/zw3;

    iput-object p0, v0, Lads_mobile_sdk/j70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v0, Lads_mobile_sdk/j70;->b:Lorg/chromium/net/CronetEngine$Builder;

    iput-object p2, v0, Lads_mobile_sdk/j70;->c:Ljava/lang/Long;

    iput-object p1, v0, Lads_mobile_sdk/j70;->d:Lorg/chromium/net/CronetEngine$Builder;

    iput v3, v0, Lads_mobile_sdk/j70;->g:I

    invoke-interface {p3, v0}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p3

    move-object p3, p2

    move-object p2, p1

    :goto_1
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    .line 820
    iget-object v0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    const/4 v1, 0x0

    const-string v2, "key"

    if-eqz v0, :cond_5

    .line 822
    const-string v4, "gads:cronet_quic:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    .line 839
    :goto_3
    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    .line 840
    iget-object v0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_7

    .line 842
    const-string v4, "gads:cronet_http2:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v3

    .line 859
    :goto_5
    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    .line 860
    iget-object v0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_9

    .line 862
    const-string v4, "gads:cronet_brotli:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v3

    .line 879
    :goto_7
    invoke-virtual {p1, v0}, Lorg/chromium/net/CronetEngine$Builder;->enableBrotli(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 880
    iget-object p1, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz p1, :cond_a

    .line 881
    const-string v0, "gads:cronet_cache_size_bytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x300000

    .line 882
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_8

    :cond_a
    const/high16 p1, 0xa00000

    :goto_8
    if-lez p1, :cond_b

    int-to-long v4, p1

    .line 883
    invoke-virtual {p2, v3, v4, v5}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 886
    :cond_b
    invoke-static {}, Lorg/chromium/net/QuicOptions;->builder()Lorg/chromium/net/QuicOptions$Builder;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_c

    .line 888
    const-string v4, "gads:cronet_zero_rtt:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move v1, v3

    .line 905
    :cond_d
    invoke-virtual {p1, v1}, Lorg/chromium/net/QuicOptions$Builder;->enableTlsZeroRtt(Z)Lorg/chromium/net/QuicOptions$Builder;

    move-result-object p1

    if-eqz p3, :cond_e

    .line 907
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p3, 0x3c

    int-to-long v4, p3

    mul-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/net/QuicOptions$Builder;->setIdleConnectionTimeoutSeconds(J)Lorg/chromium/net/QuicOptions$Builder;

    .line 909
    :cond_e
    iget-object p3, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz p3, :cond_f

    .line 911
    const-string v0, "gads:cronet_bbr:enabled"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p3, v0, v1, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 928
    :cond_f
    const-string p3, "TBBR"

    invoke-virtual {p1, p3}, Lorg/chromium/net/QuicOptions$Builder;->addClientConnectionOption(Ljava/lang/String;)Lorg/chromium/net/QuicOptions$Builder;

    .line 930
    :cond_10
    invoke-virtual {p1}, Lorg/chromium/net/QuicOptions$Builder;->build()Lorg/chromium/net/QuicOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/chromium/net/CronetEngine$Builder;->setQuicOptions(Lorg/chromium/net/QuicOptions;)Lorg/chromium/net/CronetEngine$Builder;

    .line 931
    invoke-static {}, Lorg/chromium/net/ConnectionMigrationOptions;->builder()Lorg/chromium/net/ConnectionMigrationOptions$Builder;

    move-result-object p1

    .line 932
    iget-object p3, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz p3, :cond_11

    .line 934
    const-string v0, "gads:cronet_server_migration:enabled"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p3, v0, v1, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 951
    :cond_11
    invoke-virtual {p1, v3}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->allowServerMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;

    .line 953
    :cond_12
    iget-object p0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz p0, :cond_13

    .line 955
    const-string p3, "gads:cronet_path_degradation_migration:enabled"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p0, p3, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 972
    :cond_13
    invoke-virtual {p1, v3}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->enablePathDegradationMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;

    .line 974
    :cond_14
    invoke-virtual {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->build()Lorg/chromium/net/ConnectionMigrationOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/chromium/net/CronetEngine$Builder;->setConnectionMigrationOptions(Lorg/chromium/net/ConnectionMigrationOptions;)Lorg/chromium/net/CronetEngine$Builder;

    return-object p2
.end method

.method public static final synthetic b(Lads_mobile_sdk/k70;)Lads_mobile_sdk/ex0;
    .locals 0

    .line 80
    iget-object p0, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    return-object p0
.end method


# virtual methods
.method public final a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;
    .locals 6

    .line 1241
    iget-object p1, p0, Lads_mobile_sdk/k70;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1243
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k70;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/u60;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p2, p3, p4}, Lads_mobile_sdk/u60;-><init>(Lads_mobile_sdk/k70;JLkotlin/coroutines/Continuation;)V

    .line 1244
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1245
    const-string p2, "<this>"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1504
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Lads_mobile_sdk/ja2;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 5982
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p4

    move-object/from16 v2, p6

    .line 6393
    instance-of v3, v2, Lads_mobile_sdk/f70;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/f70;

    iget v4, v3, Lads_mobile_sdk/f70;->j:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/f70;->j:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/f70;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/f70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/f70;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 6614
    iget v5, v3, Lads_mobile_sdk/f70;->j:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6615
    :cond_2
    iget-boolean v0, v3, Lads_mobile_sdk/f70;->g:Z

    iget-boolean v5, v3, Lads_mobile_sdk/f70;->f:Z

    iget-object v7, v3, Lads_mobile_sdk/f70;->e:Ljava/lang/String;

    iget-object v8, v3, Lads_mobile_sdk/f70;->d:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/e81;

    iget-object v10, v3, Lads_mobile_sdk/f70;->c:Ljava/lang/Object;

    check-cast v10, Lorg/chromium/net/CronetEngine;

    iget-object v11, v3, Lads_mobile_sdk/f70;->b:Ljava/lang/Object;

    check-cast v11, Lkotlin/time/Duration;

    iget-object v12, v3, Lads_mobile_sdk/f70;->a:Lads_mobile_sdk/k70;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v21, v0

    move/from16 v20, v5

    move-object/from16 v19, v10

    goto/16 :goto_6

    :cond_3
    iget-boolean v0, v3, Lads_mobile_sdk/f70;->g:Z

    iget-boolean v5, v3, Lads_mobile_sdk/f70;->f:Z

    iget-object v8, v3, Lads_mobile_sdk/f70;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    iget-object v10, v3, Lads_mobile_sdk/f70;->c:Ljava/lang/Object;

    check-cast v10, Lkotlin/time/Duration;

    iget-object v11, v3, Lads_mobile_sdk/f70;->b:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/f81;

    iget-object v12, v3, Lads_mobile_sdk/f70;->a:Lads_mobile_sdk/k70;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v0

    move v0, v5

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6622
    iput-object v1, v3, Lads_mobile_sdk/f70;->a:Lads_mobile_sdk/k70;

    move-object/from16 v2, p1

    iput-object v2, v3, Lads_mobile_sdk/f70;->b:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Lads_mobile_sdk/f70;->c:Ljava/lang/Object;

    move-object/from16 v10, p3

    iput-object v10, v3, Lads_mobile_sdk/f70;->d:Ljava/lang/Object;

    iput-boolean v0, v3, Lads_mobile_sdk/f70;->f:Z

    move/from16 v11, p5

    iput-boolean v11, v3, Lads_mobile_sdk/f70;->g:Z

    iput v8, v3, Lads_mobile_sdk/f70;->j:I

    if-eqz v0, :cond_6

    .line 6623
    iget-object v8, v1, Lads_mobile_sdk/k70;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6624
    iget-object v8, v1, Lads_mobile_sdk/k70;->o:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v8, v3}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_5

    goto :goto_1

    :cond_5
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 6627
    :cond_6
    iget-object v8, v1, Lads_mobile_sdk/k70;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6628
    iget-object v8, v1, Lads_mobile_sdk/k70;->n:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v8, v3}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_7

    goto :goto_1

    :cond_7
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 6631
    :cond_8
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne v8, v4, :cond_9

    goto/16 :goto_a

    :cond_9
    move v8, v11

    move-object v11, v2

    move v2, v8

    move-object v12, v1

    move-object v8, v10

    move-object v10, v5

    :goto_2
    if-eqz v0, :cond_a

    .line 6632
    iget-object v5, v12, Lads_mobile_sdk/k70;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/net/CronetEngine;

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, v12, Lads_mobile_sdk/k70;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lorg/chromium/net/CronetEngine;

    .line 6634
    :cond_b
    iget-object v13, v12, Lads_mobile_sdk/k70;->i:Lads_mobile_sdk/uv;

    if-eqz v13, :cond_c

    invoke-virtual {v11}, Lads_mobile_sdk/f81;->f()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "toString(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7222
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 7223
    invoke-virtual {v13, v14}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v13

    goto :goto_3

    :cond_c
    move-object v13, v9

    .line 7227
    :goto_3
    invoke-virtual {v11}, Lads_mobile_sdk/f81;->g()Lads_mobile_sdk/e81;

    move-result-object v11

    if-eqz v8, :cond_d

    .line 7230
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 7231
    invoke-virtual {v11, v15, v14}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    goto :goto_4

    :cond_d
    if-eqz v13, :cond_e

    .line 7236
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 7237
    invoke-virtual {v11, v14, v13}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    goto :goto_5

    .line 7241
    :cond_e
    iget-object v8, v12, Lads_mobile_sdk/k70;->c:Lads_mobile_sdk/zw3;

    iput-object v12, v3, Lads_mobile_sdk/f70;->a:Lads_mobile_sdk/k70;

    iput-object v10, v3, Lads_mobile_sdk/f70;->b:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/f70;->c:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/f70;->d:Ljava/lang/Object;

    const-string v13, "User-Agent"

    iput-object v13, v3, Lads_mobile_sdk/f70;->e:Ljava/lang/String;

    iput-boolean v0, v3, Lads_mobile_sdk/f70;->f:Z

    iput-boolean v2, v3, Lads_mobile_sdk/f70;->g:Z

    iput v7, v3, Lads_mobile_sdk/f70;->j:I

    invoke-interface {v8, v3}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v20, v0

    move/from16 v21, v2

    move-object/from16 v19, v5

    move-object v2, v7

    move-object v8, v11

    move-object v7, v13

    move-object v11, v10

    .line 7242
    :goto_6
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v7, v2}, Lads_mobile_sdk/e81;->c(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v0

    .line 7243
    invoke-virtual {v0}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v18

    if-eqz v11, :cond_10

    .line 7245
    invoke-virtual {v11}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    :goto_7
    move-wide v15, v7

    goto :goto_9

    .line 7246
    :cond_10
    iget-object v0, v12, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_11

    .line 7247
    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->C()J

    move-result-wide v7

    goto :goto_8

    .line 7248
    :cond_11
    sget-wide v7, Lads_mobile_sdk/ex0;->z:J

    .line 7249
    :goto_8
    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    goto :goto_7

    .line 7253
    :goto_9
    :try_start_1
    iget-object v0, v12, Lads_mobile_sdk/k70;->h:Lads_mobile_sdk/rz;

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    new-instance v14, Lads_mobile_sdk/h70;

    const/16 v22, 0x0

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v22}, Lads_mobile_sdk/h70;-><init>(JLads_mobile_sdk/k70;Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)V

    iput-object v9, v3, Lads_mobile_sdk/f70;->a:Lads_mobile_sdk/k70;

    iput-object v9, v3, Lads_mobile_sdk/f70;->b:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/f70;->c:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/f70;->d:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/f70;->e:Ljava/lang/String;

    iput v6, v3, Lads_mobile_sdk/f70;->j:I

    invoke-static {v0, v14, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    :goto_a
    return-object v4

    .line 7254
    :cond_12
    :goto_b
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 7265
    :goto_c
    new-instance v2, Lads_mobile_sdk/o01;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Non-retryable Cronet error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lads_mobile_sdk/o01;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 7266
    :goto_d
    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "Cronet request timed out"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7267
    sget-object v0, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    .line 7268
    new-instance v3, Lads_mobile_sdk/j01;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v0, v9, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v3
.end method

.method public final a(Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 7333
    instance-of v2, v1, Lads_mobile_sdk/i70;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/i70;

    iget v3, v2, Lads_mobile_sdk/i70;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/i70;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/i70;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/i70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/i70;->j:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 7622
    iget v4, v2, Lads_mobile_sdk/i70;->l:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-boolean v3, v2, Lads_mobile_sdk/i70;->e:Z

    iget-object v2, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/h81;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v18, v9

    goto/16 :goto_10

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lads_mobile_sdk/i70;->i:I

    iget v10, v2, Lads_mobile_sdk/i70;->h:I

    iget v11, v2, Lads_mobile_sdk/i70;->g:I

    iget-boolean v12, v2, Lads_mobile_sdk/i70;->f:Z

    iget-boolean v13, v2, Lads_mobile_sdk/i70;->e:Z

    iget-object v14, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/f81;

    iget-object v15, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    check-cast v15, Ljava/util/UUID;

    iget-object v8, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/net/CronetEngine;

    iget-object v5, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/k70;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v6, v4

    move-object v4, v8

    move-object v8, v15

    move-object v15, v5

    move v5, v10

    move v10, v12

    goto/16 :goto_b

    :cond_3
    iget v4, v2, Lads_mobile_sdk/i70;->i:I

    iget v5, v2, Lads_mobile_sdk/i70;->h:I

    iget v8, v2, Lads_mobile_sdk/i70;->g:I

    iget-boolean v10, v2, Lads_mobile_sdk/i70;->f:Z

    iget-boolean v11, v2, Lads_mobile_sdk/i70;->e:Z

    iget-object v12, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/f81;

    iget-object v13, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/UUID;

    iget-object v14, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    check-cast v14, Lorg/chromium/net/CronetEngine;

    iget-object v15, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/k70;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v1, v10

    move v10, v5

    move v5, v11

    move v11, v8

    move-object v8, v14

    goto/16 :goto_9

    :cond_4
    iget-boolean v4, v2, Lads_mobile_sdk/i70;->f:Z

    iget-boolean v5, v2, Lads_mobile_sdk/i70;->e:Z

    iget-object v8, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/UUID;

    iget-object v10, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    check-cast v10, Lorg/chromium/net/CronetEngine;

    iget-object v11, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/f81;

    iget-object v12, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/k70;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7628
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .line 7630
    iget-object v1, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->E()Z

    move-result v1

    if-ne v1, v9, :cond_6

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move/from16 v5, p3

    move/from16 v4, p4

    move-object v12, v0

    goto/16 :goto_3

    .line 7631
    :cond_6
    iget-object v1, v0, Lads_mobile_sdk/k70;->j:Lads_mobile_sdk/vk0;

    if-eqz v1, :cond_8

    iput-object v0, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    move/from16 v10, p3

    iput-boolean v10, v2, Lads_mobile_sdk/i70;->e:Z

    move/from16 v11, p4

    iput-boolean v11, v2, Lads_mobile_sdk/i70;->f:Z

    iput v9, v2, Lads_mobile_sdk/i70;->l:I

    check-cast v1, Lads_mobile_sdk/if1;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/if1;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_f

    :cond_7
    move v12, v11

    move-object v11, v4

    move v4, v12

    move v12, v10

    move-object v10, v5

    move v5, v12

    move-object v12, v0

    .line 7632
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v9, :cond_9

    move v1, v9

    goto :goto_2

    :cond_8
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move v1, v11

    move-object v11, v4

    move v4, v1

    move v1, v10

    move-object v10, v5

    move v5, v1

    move-object v12, v0

    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_b

    .line 7633
    const-string v1, "GoogleMobileAdsNetwork"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v9

    .line 7637
    :goto_5
    iget-object v13, v12, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lads_mobile_sdk/ex0;->y()I

    move-result v13

    goto :goto_6

    :cond_c
    const/4 v13, 0x5

    :goto_6
    move-object v15, v10

    move v10, v4

    move-object v4, v15

    move-object v15, v12

    move-object v12, v11

    move v11, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v13, :cond_24

    if-eqz v1, :cond_e

    .line 7641
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v15, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    iput-boolean v11, v2, Lads_mobile_sdk/i70;->e:Z

    iput-boolean v10, v2, Lads_mobile_sdk/i70;->f:Z

    iput v1, v2, Lads_mobile_sdk/i70;->g:I

    iput v5, v2, Lads_mobile_sdk/i70;->h:I

    iput v13, v2, Lads_mobile_sdk/i70;->i:I

    iput v7, v2, Lads_mobile_sdk/i70;->l:I

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7642
    invoke-static {v12}, Lads_mobile_sdk/n60;->a(Lads_mobile_sdk/f81;)Lcom/google/gson/JsonObject;

    move-result-object v14

    const-string v7, "onNetworkRequest"

    invoke-virtual {v15, v7, v8, v14, v2}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    if-ne v7, v14, :cond_d

    goto :goto_8

    :cond_d
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_8
    if-ne v7, v3, :cond_e

    goto/16 :goto_f

    :cond_e
    move/from16 v22, v11

    move v11, v1

    move v1, v10

    move v10, v5

    move/from16 v5, v22

    move-object/from16 v22, v8

    move-object v8, v4

    move v4, v13

    move-object/from16 v13, v22

    .line 7643
    :goto_9
    iput-object v15, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    iput-boolean v5, v2, Lads_mobile_sdk/i70;->e:Z

    iput-boolean v1, v2, Lads_mobile_sdk/i70;->f:Z

    iput v11, v2, Lads_mobile_sdk/i70;->g:I

    iput v10, v2, Lads_mobile_sdk/i70;->h:I

    iput v4, v2, Lads_mobile_sdk/i70;->i:I

    iput v6, v2, Lads_mobile_sdk/i70;->l:I

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7644
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v14

    invoke-direct {v7, v14, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 7650
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 7651
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v14

    .line 7652
    iget-object v14, v14, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    .line 7653
    new-instance v16, Lads_mobile_sdk/r60;

    move/from16 v19, v5

    move-object/from16 v17, v7

    move-object/from16 v21, v12

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    invoke-direct/range {v16 .. v21}, Lads_mobile_sdk/r60;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lads_mobile_sdk/k70;ZLads_mobile_sdk/rr3;Lads_mobile_sdk/f81;)V

    move-object/from16 v12, v16

    move-object/from16 v5, v18

    move-object/from16 v14, v21

    .line 7654
    iget-object v15, v14, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    .line 7655
    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    .line 7656
    iget-object v6, v5, Lads_mobile_sdk/k70;->h:Lads_mobile_sdk/rz;

    .line 7657
    invoke-virtual {v8, v15, v12, v6}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v6

    .line 7658
    iget-object v12, v14, Lads_mobile_sdk/f81;->b:Ljava/lang/String;

    .line 7659
    invoke-virtual {v6, v12}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v6

    .line 7660
    iget-object v12, v14, Lads_mobile_sdk/f81;->c:Ljava/util/Map;

    .line 7661
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 7662
    invoke-virtual {v6, v9, v15}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const/4 v9, 0x1

    goto :goto_a

    .line 7663
    :cond_f
    iget-object v9, v14, Lads_mobile_sdk/f81;->d:[B

    if-eqz v9, :cond_10

    .line 7664
    invoke-static {v9}, Lorg/chromium/net/apihelpers/UploadDataProviders;->create([B)Lorg/chromium/net/UploadDataProvider;

    move-result-object v9

    .line 7665
    iget-object v12, v5, Lads_mobile_sdk/k70;->h:Lads_mobile_sdk/rz;

    .line 7666
    invoke-virtual {v6, v9, v12}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 7669
    :cond_10
    invoke-virtual {v6}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object v6

    .line 7671
    new-instance v9, Lads_mobile_sdk/o60;

    invoke-direct {v9, v6}, Lads_mobile_sdk/o60;-><init>(Lorg/chromium/net/UrlRequest;)V

    invoke-virtual {v7, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 7673
    invoke-virtual {v6}, Lorg/chromium/net/UrlRequest;->start()V

    .line 7965
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v6

    .line 7966
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_11

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_11
    if-ne v6, v3, :cond_12

    goto/16 :goto_f

    :cond_12
    move-object v15, v5

    move v5, v10

    move v10, v1

    move-object v1, v6

    move v6, v4

    move-object v4, v8

    move-object v8, v13

    move/from16 v13, v19

    .line 7967
    :goto_b
    check-cast v1, Lads_mobile_sdk/v01;

    .line 8500
    instance-of v7, v1, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_13

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 8501
    :cond_13
    const-string v7, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 8502
    check-cast v1, Lads_mobile_sdk/h81;

    .line 8505
    invoke-virtual {v1}, Lads_mobile_sdk/h81;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    if-eqz v10, :cond_1f

    .line 8508
    const-string v9, "https://"

    const/4 v12, 0x1

    invoke-static {v7, v9, v12}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_15

    .line 8510
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_14

    const/16 v1, 0x61

    invoke-static {v7, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8511
    :cond_14
    new-instance v1, Lads_mobile_sdk/o01;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received non-HTTPs redirect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lads_mobile_sdk/o01;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 8513
    :cond_15
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8514
    invoke-virtual {v14}, Lads_mobile_sdk/f81;->g()Lads_mobile_sdk/e81;

    move-result-object v7

    .line 8518
    invoke-virtual {v14}, Lads_mobile_sdk/f81;->f()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 8520
    invoke-virtual {v14}, Lads_mobile_sdk/f81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 9015
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 9016
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 p1, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 p2, v4

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move/from16 p3, v5

    .line 9017
    const-string v5, "X-Client-Data"

    move/from16 p4, v6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_16

    .line 9018
    const-string v5, "Authorization"

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_16

    .line 9019
    const-string v5, "Cookie"

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 9512
    :cond_16
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    goto :goto_c

    :cond_18
    move-object/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    .line 9514
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9515
    invoke-virtual {v7, v4}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_19
    move-object/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    .line 9519
    :cond_1a
    invoke-virtual {v1}, Lads_mobile_sdk/h81;->b()I

    move-result v0

    const/16 v4, 0x12f

    if-eq v0, v4, :cond_1c

    .line 9520
    invoke-virtual {v1}, Lads_mobile_sdk/h81;->b()I

    move-result v0

    const/16 v4, 0x12d

    if-eq v0, v4, :cond_1b

    invoke-virtual {v1}, Lads_mobile_sdk/h81;->b()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_1d

    :cond_1b
    invoke-virtual {v14}, Lads_mobile_sdk/f81;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9522
    :cond_1c
    invoke-virtual {v7}, Lads_mobile_sdk/e81;->b()Lads_mobile_sdk/e81;

    .line 9523
    const-string v0, "Content-Type"

    invoke-virtual {v7, v0}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;)V

    .line 9524
    const-string v0, "Content-Length"

    invoke-virtual {v7, v0}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;)V

    .line 9529
    :cond_1d
    invoke-virtual {v14}, Lads_mobile_sdk/f81;->b()Lads_mobile_sdk/ss0;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 9530
    iget-object v1, v15, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    invoke-static {v9, v0, v1}, Lads_mobile_sdk/us0;->a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lads_mobile_sdk/ex0;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v7, v0}, Lads_mobile_sdk/e81;->a(Ljava/net/URL;)V

    goto :goto_e

    .line 9531
    :cond_1e
    invoke-virtual {v7, v9}, Lads_mobile_sdk/e81;->a(Ljava/net/URL;)V

    .line 9532
    :goto_e
    invoke-virtual {v7}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v12

    const/16 v18, 0x1

    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move v1, v11

    move v11, v13

    move/from16 v9, v18

    const/4 v6, 0x3

    const/4 v7, 0x2

    move/from16 v13, p4

    goto/16 :goto_7

    :cond_1f
    const/16 v18, 0x1

    if-eqz v11, :cond_20

    .line 9537
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, v2, Lads_mobile_sdk/i70;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v2, Lads_mobile_sdk/i70;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/i70;->c:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/i70;->d:Ljava/lang/Object;

    iput-boolean v10, v2, Lads_mobile_sdk/i70;->e:Z

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/i70;->l:I

    invoke-virtual {v15, v1, v8, v2}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/h81;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_20

    :goto_f
    return-object v3

    :cond_20
    move-object v2, v1

    move v3, v10

    .line 9539
    :goto_10
    invoke-virtual {v2}, Lads_mobile_sdk/h81;->b()I

    move-result v0

    const/16 v1, 0x12c

    if-gt v1, v0, :cond_21

    const/16 v1, 0x190

    if-ge v0, v1, :cond_21

    move/from16 v8, v18

    goto :goto_11

    :cond_21
    const/4 v8, 0x0

    .line 9540
    :goto_11
    invoke-virtual {v2}, Lads_mobile_sdk/h81;->f()Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v8, :cond_22

    if-eqz v3, :cond_23

    .line 9541
    :cond_22
    new-instance v0, Lads_mobile_sdk/k01;

    invoke-virtual {v2}, Lads_mobile_sdk/h81;->b()I

    move-result v1

    invoke-virtual {v2}, Lads_mobile_sdk/h81;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/k01;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 9543
    :cond_23
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 9548
    :cond_24
    new-instance v0, Lads_mobile_sdk/p01;

    .line 9549
    invoke-virtual {v12}, Lads_mobile_sdk/f81;->f()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too many redirects. Max redirects: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Last attempted url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9550
    invoke-direct {v0, v1}, Lads_mobile_sdk/p01;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/h81;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 4459
    instance-of v0, p3, Lads_mobile_sdk/c70;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/c70;

    iget v1, v0, Lads_mobile_sdk/c70;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c70;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/c70;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/c70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/c70;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5198
    iget v2, v0, Lads_mobile_sdk/c70;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/c70;->c:Ljava/util/UUID;

    iget-object p2, v0, Lads_mobile_sdk/c70;->b:Lads_mobile_sdk/h81;

    iget-object v2, v0, Lads_mobile_sdk/c70;->a:Lads_mobile_sdk/k70;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object p2, v0, Lads_mobile_sdk/c70;->c:Ljava/util/UUID;

    iget-object p1, v0, Lads_mobile_sdk/c70;->b:Lads_mobile_sdk/h81;

    iget-object v2, v0, Lads_mobile_sdk/c70;->a:Lads_mobile_sdk/k70;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5200
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5201
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5202
    iget v6, p1, Lads_mobile_sdk/h81;->a:I

    .line 5203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "code"

    invoke-virtual {v2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v6, "firstline"

    invoke-virtual {p3, v6, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 5204
    iget-object v2, p1, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 5205
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 5208
    :cond_5
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    .line 5209
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5211
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5212
    const-string v10, "name"

    invoke-virtual {v9, v10, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    const-string v8, "value"

    invoke-virtual {v9, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    invoke-virtual {v6, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 5221
    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5222
    const-string v2, "headers"

    invoke-virtual {p3, v2, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 5223
    :cond_7
    :goto_2
    iput-object p0, v0, Lads_mobile_sdk/c70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v0, Lads_mobile_sdk/c70;->b:Lads_mobile_sdk/h81;

    iput-object p2, v0, Lads_mobile_sdk/c70;->c:Ljava/util/UUID;

    iput v5, v0, Lads_mobile_sdk/c70;->f:I

    const-string v2, "onNetworkResponse"

    invoke-virtual {p0, v2, p2, p3, v0}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object v2, p0

    .line 5224
    :goto_3
    iget p3, p1, Lads_mobile_sdk/h81;->a:I

    const/16 v5, 0xc8

    if-gt v5, p3, :cond_9

    const/16 v5, 0x12c

    if-ge p3, v5, :cond_9

    goto :goto_4

    .line 5227
    :cond_9
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v5, "error_description"

    .line 5228
    iget-object v6, p1, Lads_mobile_sdk/h81;->b:Ljava/lang/String;

    .line 5229
    invoke-virtual {p3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5230
    iput-object v2, v0, Lads_mobile_sdk/c70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v0, Lads_mobile_sdk/c70;->b:Lads_mobile_sdk/h81;

    iput-object p2, v0, Lads_mobile_sdk/c70;->c:Ljava/util/UUID;

    iput v4, v0, Lads_mobile_sdk/c70;->f:I

    const-string v4, "onNetworkRequestError"

    invoke-virtual {v2, v4, p2, p3, v0}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    goto :goto_7

    :cond_a
    :goto_4
    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    .line 5231
    :goto_5
    iget-object p2, p2, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p2, :cond_e

    .line 5232
    invoke-static {p2}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object p2

    .line 5233
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 5237
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5238
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bodylength"

    invoke-virtual {p3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 5239
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_b

    .line 5240
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v4, "getBytes(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v4, "body"

    invoke-virtual {p3, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 5242
    :cond_b
    sget-object v4, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {p2}, Lads_mobile_sdk/m21;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "bodydigest"

    invoke-virtual {p3, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    :goto_6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p2, 0x0

    .line 5245
    iput-object p2, v0, Lads_mobile_sdk/c70;->a:Lads_mobile_sdk/k70;

    iput-object p2, v0, Lads_mobile_sdk/c70;->b:Lads_mobile_sdk/h81;

    iput-object p2, v0, Lads_mobile_sdk/c70;->c:Ljava/util/UUID;

    iput v3, v0, Lads_mobile_sdk/c70;->f:I

    const-string p2, "onNetworkResponseBody"

    invoke-virtual {v2, p2, p1, p3, v0}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_7
    return-object v1

    .line 5258
    :cond_c
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5259
    :cond_e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;
    .locals 6

    .line 976
    iget-object p1, p0, Lads_mobile_sdk/k70;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 978
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k70;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/t60;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/t60;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 979
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 980
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1239
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 5260
    instance-of v0, p3, Lads_mobile_sdk/d70;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/d70;

    iget v1, v0, Lads_mobile_sdk/d70;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d70;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/d70;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/d70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/d70;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5969
    iget v2, v0, Lads_mobile_sdk/d70;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/d70;->d:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/d70;->c:Lads_mobile_sdk/e81;

    iget-object v2, v0, Lads_mobile_sdk/d70;->b:Lads_mobile_sdk/e81;

    iget-object v4, v0, Lads_mobile_sdk/d70;->a:Lads_mobile_sdk/k70;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5970
    new-instance p3, Lads_mobile_sdk/e81;

    invoke-direct {p3}, Lads_mobile_sdk/e81;-><init>()V

    invoke-virtual {p3, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 5971
    const-string p3, "GET"

    invoke-virtual {p1, p3, v5}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 5972
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 5973
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    goto :goto_1

    .line 5974
    :cond_4
    iget-object p2, p0, Lads_mobile_sdk/k70;->c:Lads_mobile_sdk/zw3;

    iput-object p0, v0, Lads_mobile_sdk/d70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v0, Lads_mobile_sdk/d70;->b:Lads_mobile_sdk/e81;

    iput-object p1, v0, Lads_mobile_sdk/d70;->c:Lads_mobile_sdk/e81;

    const-string p3, "User-Agent"

    iput-object p3, v0, Lads_mobile_sdk/d70;->d:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/d70;->g:I

    invoke-interface {p2, v0}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    move-object p3, p2

    move-object p2, v2

    .line 5975
    :goto_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 5978
    invoke-virtual {v2}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    const-string p3, "randomUUID(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lads_mobile_sdk/d70;->a:Lads_mobile_sdk/k70;

    iput-object v5, v0, Lads_mobile_sdk/d70;->b:Lads_mobile_sdk/e81;

    iput-object v5, v0, Lads_mobile_sdk/d70;->c:Lads_mobile_sdk/e81;

    iput-object v5, v0, Lads_mobile_sdk/d70;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/d70;->g:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5979
    invoke-static {p1}, Lads_mobile_sdk/n60;->a(Lads_mobile_sdk/f81;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p3, "onNetworkRequest"

    invoke-virtual {v4, p3, p2, p1, v0}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne p1, v1, :cond_7

    :goto_4
    return-object v1

    .line 5980
    :cond_7
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 3307
    const-string v0, "GoogleMobileAdsNetwork"

    .line 0
    const-string v1, "GMA Debug CONTENT "

    .line 3307
    instance-of v2, p4, Lads_mobile_sdk/b70;

    if-eqz v2, :cond_0

    move-object v2, p4

    check-cast v2, Lads_mobile_sdk/b70;

    iget v3, v2, Lads_mobile_sdk/b70;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/b70;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/b70;

    invoke-direct {v2, p0, p4}, Lads_mobile_sdk/b70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v2, Lads_mobile_sdk/b70;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 4025
    iget v4, v2, Lads_mobile_sdk/b70;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object p1, v2, Lads_mobile_sdk/b70;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v2, Lads_mobile_sdk/b70;->a:Lcom/google/gson/JsonObject;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4027
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "timestamp"

    invoke-virtual {p4, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4029
    const-string v4, "event"

    invoke-virtual {p4, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "network_request_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "components"

    invoke-virtual {p4, p2, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4031
    const-string p1, "params"

    invoke-virtual {p4, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4035
    iget-object p1, p0, Lads_mobile_sdk/k70;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 4244
    iput-object p4, v2, Lads_mobile_sdk/b70;->a:Lcom/google/gson/JsonObject;

    iput-object p1, v2, Lads_mobile_sdk/b70;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/b70;->e:I

    invoke-interface {p1, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_3

    return-object v3

    :cond_3
    move-object p2, p4

    .line 4245
    :goto_1
    :try_start_0
    const-string p3, "GMA Debug BEGIN"

    const/4 p4, 0x2

    invoke-static {p3, v6, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 4246
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 4247
    const-string p2, "GMA Debug FINISH"

    invoke-static {p2, v6, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 4248
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4457
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 4458
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 5985
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5990
    iget-object v2, p0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    invoke-static {p1, p2, v2}, Lads_mobile_sdk/us0;->a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lads_mobile_sdk/ex0;)Ljava/net/URL;

    move-result-object p1

    .line 5991
    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5992
    const-string v2, "ids"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5993
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5994
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6036
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6037
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 6038
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6039
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 6041
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 6043
    :goto_1
    new-instance v2, Lads_mobile_sdk/f81;

    .line 6046
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 6047
    const-string v4, "GET"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/f81;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V

    const/4 v7, 0x0

    const/16 v9, 0xe

    move-object v4, p0

    move-object v8, p3

    move-object v5, v2

    .line 6048
    invoke-static/range {v4 .. v9}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/net/URL;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 6049
    instance-of v0, p2, Lads_mobile_sdk/e70;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/e70;

    iget v1, v0, Lads_mobile_sdk/e70;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/e70;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/e70;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/e70;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lads_mobile_sdk/e70;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 6326
    iget v1, v6, Lads_mobile_sdk/e70;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lads_mobile_sdk/e70;->c:Ljava/lang/String;

    iget-object v1, v6, Lads_mobile_sdk/e70;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/e81;

    iget-object v3, v6, Lads_mobile_sdk/e70;->a:Lads_mobile_sdk/k70;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v6, Lads_mobile_sdk/e70;->b:Ljava/lang/Object;

    check-cast p1, Ljava/net/URL;

    iget-object v1, v6, Lads_mobile_sdk/e70;->a:Lads_mobile_sdk/k70;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6327
    iput-object p0, v6, Lads_mobile_sdk/e70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v6, Lads_mobile_sdk/e70;->b:Ljava/lang/Object;

    iput v4, v6, Lads_mobile_sdk/e70;->f:I

    .line 6328
    iget-object p2, p0, Lads_mobile_sdk/k70;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6329
    iget-object p2, p0, Lads_mobile_sdk/k70;->o:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p2, v6}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 6336
    :cond_6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p2, v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, p0

    .line 6337
    :goto_2
    new-instance p2, Lads_mobile_sdk/e81;

    invoke-direct {p2}, Lads_mobile_sdk/e81;-><init>()V

    .line 6338
    const-string v4, "url"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6385
    iput-object p1, p2, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    .line 6386
    const-string p1, "HEAD"

    invoke-virtual {p2, p1, v5}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 6387
    iget-object p2, v1, Lads_mobile_sdk/k70;->c:Lads_mobile_sdk/zw3;

    iput-object v1, v6, Lads_mobile_sdk/e70;->a:Lads_mobile_sdk/k70;

    iput-object p1, v6, Lads_mobile_sdk/e70;->b:Ljava/lang/Object;

    const-string v4, "User-Agent"

    iput-object v4, v6, Lads_mobile_sdk/e70;->c:Ljava/lang/String;

    iput v3, v6, Lads_mobile_sdk/e70;->f:I

    invoke-interface {p2, v6}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v3, v1

    move-object v1, p1

    move-object p1, v4

    .line 6388
    :goto_3
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lads_mobile_sdk/e81;->c(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 6389
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 6390
    iget-object p2, v3, Lads_mobile_sdk/k70;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/net/CronetEngine;

    if-nez p2, :cond_9

    iget-object p2, v3, Lads_mobile_sdk/k70;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lorg/chromium/net/CronetEngine;

    .line 6391
    :cond_9
    iput-object v5, v6, Lads_mobile_sdk/e70;->a:Lads_mobile_sdk/k70;

    iput-object v5, v6, Lads_mobile_sdk/e70;->b:Ljava/lang/Object;

    iput-object v5, v6, Lads_mobile_sdk/e70;->c:Ljava/lang/String;

    iput v2, v6, Lads_mobile_sdk/e70;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v1, v3

    move-object v3, p2

    .line 6392
    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    :goto_4
    return-object v0

    :cond_a
    return-object p1
.end method

.method public final a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 7271
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7276
    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7277
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7278
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7320
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7321
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 7322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7323
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 7325
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 7327
    :goto_1
    new-instance v2, Lads_mobile_sdk/f81;

    .line 7330
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 7331
    const-string v4, "GET"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/f81;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v5, v2

    .line 7332
    invoke-virtual/range {v4 .. v10}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableJob;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v0, p4

    .line 1505
    instance-of v1, v0, Lads_mobile_sdk/v60;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/v60;

    iget v3, v1, Lads_mobile_sdk/v60;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v1, Lads_mobile_sdk/v60;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/v60;

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/v60;-><init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Lads_mobile_sdk/v60;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 2054
    iget v1, v7, Lads_mobile_sdk/v60;->e:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v7, Lads_mobile_sdk/v60;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v7, Lads_mobile_sdk/v60;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 2055
    :cond_3
    iget-object v1, v7, Lads_mobile_sdk/v60;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v7, Lads_mobile_sdk/v60;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 2056
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2063
    iget-object v0, v2, Lads_mobile_sdk/k70;->f:Lads_mobile_sdk/ja1;

    if-eqz v0, :cond_5

    .line 2064
    invoke-virtual {v0}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2065
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2066
    const-string v1, "force_cronet_java_fallback_provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2067
    :cond_5
    iget-object v0, v2, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_7

    .line 2069
    const-string v1, "key"

    const-string v3, "gads:use_cronet_fallback_provider:enabled"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v1, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v12, :cond_7

    :cond_6
    move v1, v12

    goto :goto_1

    :cond_7
    move v1, v11

    .line 2086
    :goto_1
    new-instance v0, Lads_mobile_sdk/z60;

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/z60;-><init>(ZLads_mobile_sdk/k70;Ljava/lang/Long;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableJob;Lkotlin/coroutines/Continuation;)V

    .line 2125
    iget-object v1, v2, Lads_mobile_sdk/k70;->e:Lads_mobile_sdk/g83;

    if-eqz v1, :cond_17

    .line 2126
    sget-object v3, Lads_mobile_sdk/s11;->B0:Lads_mobile_sdk/s11;

    .line 2369
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 2370
    new-instance v5, Lads_mobile_sdk/ks3;

    .line 2371
    new-instance v6, Lads_mobile_sdk/n03;

    invoke-direct {v6}, Lads_mobile_sdk/n03;-><init>()V

    .line 2372
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2373
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 2374
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 2375
    invoke-direct {v5, v6, v9, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2376
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 2377
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v6, :cond_f

    .line 2378
    invoke-static {v1, v3, v4, v5}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 2379
    :try_start_2
    iput-object v1, v7, Lads_mobile_sdk/v60;->a:Lads_mobile_sdk/rr3;

    iput-object v1, v7, Lads_mobile_sdk/v60;->b:Lads_mobile_sdk/rr3;

    iput v12, v7, Lads_mobile_sdk/v60;->e:I

    invoke-virtual {v0, v7}, Lads_mobile_sdk/z60;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v8, :cond_8

    goto/16 :goto_9

    :cond_8
    move-object v3, v1

    .line 2380
    :goto_2
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2629
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_9

    .line 2630
    check-cast v0, Lads_mobile_sdk/i01;

    .line 2631
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2632
    :cond_9
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :goto_3
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    .line 2640
    :goto_4
    :try_start_4
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2644
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_e

    .line 2646
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_a

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_a

    .line 2652
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2658
    :cond_a
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 2659
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 2660
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw v0

    .line 2661
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2662
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2663
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2664
    :cond_e
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 2665
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2699
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2700
    :try_start_6
    iput-object v1, v7, Lads_mobile_sdk/v60;->a:Lads_mobile_sdk/rr3;

    iput-object v1, v7, Lads_mobile_sdk/v60;->b:Lads_mobile_sdk/rr3;

    iput v10, v7, Lads_mobile_sdk/v60;->e:I

    invoke-virtual {v0, v7}, Lads_mobile_sdk/z60;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v8, :cond_10

    goto :goto_9

    :cond_10
    move-object v3, v1

    .line 2701
    :goto_5
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2987
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_11

    .line 2988
    check-cast v0, Lads_mobile_sdk/i01;

    .line 2989
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2990
    :cond_11
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2991
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_7
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v3, v1

    .line 3278
    :goto_8
    :try_start_8
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3282
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_16

    .line 3284
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_12

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_12

    .line 3290
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3296
    :cond_12
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_15

    .line 3297
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14

    .line 3298
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_13

    throw v0

    .line 3299
    :cond_13
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3300
    :cond_14
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3301
    :cond_15
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3302
    :cond_16
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 3303
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3304
    :cond_17
    iput v9, v7, Lads_mobile_sdk/v60;->e:I

    invoke-virtual {v0, v7}, Lads_mobile_sdk/z60;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_18

    :goto_9
    return-object v8

    .line 3306
    :cond_18
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/uv;)V
    .locals 1

    .line 9551
    const-string v0, "chromeVariationsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9692
    iput-object p1, p0, Lads_mobile_sdk/k70;->i:Lads_mobile_sdk/uv;

    return-void
.end method

.method public final a(Lads_mobile_sdk/vk0;)V
    .locals 1

    .line 9693
    const-string v0, "debugModeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9830
    iput-object p1, p0, Lads_mobile_sdk/k70;->j:Lads_mobile_sdk/vk0;

    return-void
.end method
