.class public final Lads_mobile_sdk/ca2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/pa2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Ljava/util/Set;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Lads_mobile_sdk/w92;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Z

.field public j:J

.field public k:Lads_mobile_sdk/un3;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;Ljava/util/Set;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkChangeListeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    iput-object p3, p0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    .line 62
    iput-object p4, p0, Lads_mobile_sdk/ca2;->d:Lads_mobile_sdk/ur3;

    .line 63
    iput-object p5, p0, Lads_mobile_sdk/ca2;->e:Ljava/util/Set;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 72
    invoke-static {p2, p3, p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 73
    iput-boolean p3, p0, Lads_mobile_sdk/ca2;->i:Z

    .line 74
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p4

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p3, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lads_mobile_sdk/ca2;->j:J

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 115
    iget-object v0, p0, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    const-string v2, "Device is now "

    .line 557
    instance-of v3, v0, Lads_mobile_sdk/x92;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/x92;

    iget v4, v3, Lads_mobile_sdk/x92;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/x92;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/x92;

    invoke-direct {v3, v1, v0}, Lads_mobile_sdk/x92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lads_mobile_sdk/x92;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 685
    iget v5, v3, Lads_mobile_sdk/x92;->i:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-wide v4, v3, Lads_mobile_sdk/x92;->e:J

    iget-object v2, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v4, v3, Lads_mobile_sdk/x92;->f:Z

    iget-wide v5, v3, Lads_mobile_sdk/x92;->e:J

    iget-object v7, v3, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/un3;

    iget-object v3, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v4

    goto/16 :goto_5

    :cond_3
    iget-boolean v5, v3, Lads_mobile_sdk/x92;->f:Z

    iget-wide v11, v3, Lads_mobile_sdk/x92;->e:J

    iget-object v13, v3, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v14, v3, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    check-cast v14, Landroid/net/NetworkCapabilities;

    iget-object v15, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v15, Landroid/net/Network;

    iget-object v6, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 693
    iget-object v13, v1, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 832
    iput-object v1, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    move-object/from16 v0, p3

    iput-object v0, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    move-object/from16 v5, p4

    iput-object v5, v3, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v13, v3, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    move-wide/from16 v11, p1

    iput-wide v11, v3, Lads_mobile_sdk/x92;->e:J

    move/from16 v6, p5

    iput-boolean v6, v3, Lads_mobile_sdk/x92;->f:Z

    iput v9, v3, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v13, v10, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object v15, v0

    move-object v14, v5

    move v5, v6

    move-object v6, v1

    .line 833
    :goto_1
    :try_start_0
    iget-wide v7, v6, Lads_mobile_sdk/ca2;->j:J

    invoke-static {v11, v12, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-gtz v7, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 976
    invoke-interface {v13, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_6
    :try_start_1
    iget-boolean v7, v6, Lads_mobile_sdk/ca2;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v13, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 977
    sget-object v8, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v8, Lads_mobile_sdk/y92;

    invoke-direct {v8, v11, v12, v7}, Lads_mobile_sdk/y92;-><init>(JZ)V

    invoke-static {v8}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 980
    sget-object v7, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v7, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v7, v8}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v14, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "connectivityManager"

    if-eqz v15, :cond_9

    .line 985
    iget-object v5, v6, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_8
    invoke-virtual {v5, v15}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_c

    .line 987
    iget-object v5, v6, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_a
    iget-object v7, v6, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v7, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    :cond_b
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    goto :goto_2

    :cond_c
    move-object v14, v10

    :goto_2
    if-nez v14, :cond_d

    goto :goto_3

    :cond_d
    const/16 v0, 0xc

    .line 988
    invoke-virtual {v14, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    .line 989
    invoke-virtual {v14, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v9, 0x0

    .line 990
    :goto_4
    new-instance v0, Lads_mobile_sdk/aa2;

    invoke-direct {v0, v11, v12, v9}, Lads_mobile_sdk/aa2;-><init>(JZ)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 991
    new-instance v16, Lads_mobile_sdk/un3;

    .line 992
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 993
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0, v14}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;Landroid/net/NetworkCapabilities;)I

    move-result v18

    .line 994
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->c(Landroid/content/Context;)I

    move-result v19

    .line 995
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->d(Landroid/content/Context;)I

    move-result v20

    .line 996
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->e(Landroid/content/Context;)Z

    move-result v21

    .line 997
    iget-object v0, v6, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;)I

    move-result v22

    .line 998
    invoke-direct/range {v16 .. v22}, Lads_mobile_sdk/un3;-><init>(Ljava/lang/String;IIIZI)V

    move-object/from16 v8, v16

    .line 999
    iget-object v7, v6, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1130
    iput-object v6, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    iput-object v8, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    iput-object v7, v3, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v10, v3, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v11, v3, Lads_mobile_sdk/x92;->e:J

    iput-boolean v9, v3, Lads_mobile_sdk/x92;->f:Z

    const/4 v0, 0x2

    iput v0, v3, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v7, v10, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f

    goto :goto_7

    :cond_f
    move-object v3, v6

    move-wide v5, v11

    .line 1131
    :goto_5
    :try_start_2
    iget-wide v11, v3, Lads_mobile_sdk/ca2;->j:J

    invoke-static {v5, v6, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gtz v0, :cond_10

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1264
    invoke-interface {v7, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 1265
    :cond_10
    :try_start_3
    iput-wide v5, v3, Lads_mobile_sdk/ca2;->j:J

    .line 1266
    iput-object v8, v3, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    .line 1267
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/ba2;

    invoke-direct {v0, v5, v6}, Lads_mobile_sdk/ba2;-><init>(J)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 1268
    iget-object v0, v3, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Lads_mobile_sdk/un3;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1269
    iget-object v0, v3, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Lads_mobile_sdk/un3;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1272
    iget-boolean v0, v3, Lads_mobile_sdk/ca2;->i:Z

    if-ne v9, v0, :cond_11

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1397
    invoke-interface {v7, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_11
    if-eqz v9, :cond_12

    .line 1398
    :try_start_4
    const-string v0, "online"

    goto :goto_6

    .line 1399
    :cond_12
    const-string v0, "offline"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 1400
    iput-boolean v9, v3, Lads_mobile_sdk/ca2;->i:Z

    .line 1401
    iget-object v0, v3, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1402
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1523
    invoke-interface {v7, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 1524
    invoke-interface {v7, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1525
    :cond_13
    iget-object v2, v6, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1648
    iput-object v6, v3, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    iput-object v2, v3, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    iput-object v10, v3, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v10, v3, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v11, v3, Lads_mobile_sdk/x92;->e:J

    const/4 v0, 0x3

    iput v0, v3, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v2, v10, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_14

    :goto_7
    return-object v4

    :cond_14
    move-object v3, v6

    move-wide v4, v11

    .line 1649
    :goto_8
    :try_start_5
    iput-wide v4, v3, Lads_mobile_sdk/ca2;->j:J

    .line 1650
    iput-boolean v9, v3, Lads_mobile_sdk/ca2;->i:Z

    .line 1651
    iget-object v0, v3, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1652
    iget-object v0, v3, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1653
    iget-object v6, v3, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lads_mobile_sdk/un3;->a()I

    move-result v6

    goto :goto_9

    :cond_15
    const/4 v6, 0x0

    .line 1654
    :goto_9
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1657
    iget-object v0, v3, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1658
    iget-object v6, v3, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lads_mobile_sdk/un3;->b()I

    move-result v6

    goto :goto_a

    :cond_16
    const/4 v6, -0x1

    .line 1659
    :goto_a
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1662
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1779
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-wide v5, v4

    .line 1780
    :goto_b
    iget-object v0, v3, Lads_mobile_sdk/ca2;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/n92;

    .line 1781
    iget-object v4, v3, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/z92;

    const/4 v8, 0x0

    move-object/from16 p3, v2

    move-wide/from16 p4, v5

    move-object/from16 p1, v7

    move-object/from16 p6, v8

    move/from16 p2, v9

    invoke-direct/range {p1 .. p6}, Lads_mobile_sdk/z92;-><init>(ZLads_mobile_sdk/n92;JLkotlin/coroutines/Continuation;)V

    move-object/from16 v2, p1

    invoke-static {v4, v2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_c

    .line 1789
    :cond_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    .line 1893
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 1894
    invoke-interface {v13, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 116
    instance-of v0, p1, Lads_mobile_sdk/o92;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o92;

    iget v1, v0, Lads_mobile_sdk/o92;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o92;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/o92;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/o92;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 217
    iget v2, v0, Lads_mobile_sdk/o92;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/o92;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o92;->a:Lads_mobile_sdk/ca2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 380
    iput-object p0, v0, Lads_mobile_sdk/o92;->a:Lads_mobile_sdk/ca2;

    iput-object p1, v0, Lads_mobile_sdk/o92;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o92;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 381
    :goto_1
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    .line 548
    new-instance v5, Lads_mobile_sdk/un3;

    .line 549
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 550
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1, v4}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;Landroid/net/NetworkCapabilities;)I

    move-result v7

    .line 551
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->c(Landroid/content/Context;)I

    move-result v8

    .line 552
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->d(Landroid/content/Context;)I

    move-result v9

    .line 553
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->e(Landroid/content/Context;)Z

    move-result v10

    .line 554
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;)I

    move-result v11

    .line 555
    invoke-direct/range {v5 .. v11}, Lads_mobile_sdk/un3;-><init>(Ljava/lang/String;IIIZI)V

    return-object v5

    :cond_4
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 556
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b()I
    .locals 1

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 118
    instance-of v0, p1, Lads_mobile_sdk/p92;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/p92;

    iget v1, v0, Lads_mobile_sdk/p92;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p92;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/p92;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/p92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p1, v7, Lads_mobile_sdk/p92;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 208
    iget v0, v7, Lads_mobile_sdk/p92;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-object v0, v7, Lads_mobile_sdk/p92;->a:Lads_mobile_sdk/ca2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 209
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 211
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 212
    iget-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getSystemService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    .line 213
    sget-object p1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_3

    .line 216
    :cond_3
    new-instance p1, Lads_mobile_sdk/w92;

    invoke-direct {p1, p0}, Lads_mobile_sdk/w92;-><init>(Lads_mobile_sdk/ca2;)V

    .line 217
    iput-object p1, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    .line 246
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1f

    const-string v4, "callback"

    const-string v5, "connectivityManager"

    const/4 v6, 0x0

    if-ge p1, v0, :cond_6

    .line 247
    :try_start_1
    iget-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_4
    iget-object v0, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    invoke-virtual {p1, v6}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_3

    .line 249
    :cond_6
    iget-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    .line 250
    :cond_7
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v5, 0x0

    .line 252
    invoke-virtual {v0, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v5, 0x3

    .line 253
    invoke-virtual {v0, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 255
    iget-object v5, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    if-nez v5, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v6, v5

    .line 256
    :goto_2
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    invoke-virtual {p1, v0, v6, v4}, Landroid/net/ConnectivityManager;->registerBestMatchingNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 264
    iget-object v0, p0, Lads_mobile_sdk/ca2;->d:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v4, "Failed to register network callbacks."

    invoke-virtual {v0, v4, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_3
    iput-object p0, v7, Lads_mobile_sdk/p92;->a:Lads_mobile_sdk/ca2;

    iput v1, v7, Lads_mobile_sdk/p92;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/ca2;->a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_9

    return-object v8

    :cond_9
    move-object v0, p0

    .line 266
    :goto_4
    sput-object v0, Lads_mobile_sdk/oa2;->a:Lads_mobile_sdk/pa2;

    .line 267
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
