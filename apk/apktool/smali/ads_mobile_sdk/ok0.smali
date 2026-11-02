.class public final Lads_mobile_sdk/ok0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Landroid/net/Uri;


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/g83;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/o21;

.field public final h:Lads_mobile_sdk/qn;

.field public final i:Lads_mobile_sdk/e01;

.field public final j:Lads_mobile_sdk/if1;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/google/gson/JsonObject;

.field public o:Lads_mobile_sdk/ks3;

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    sput-object v0, Lads_mobile_sdk/ok0;->q:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ur3;Lads_mobile_sdk/f0;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;Lads_mobile_sdk/qn;Lads_mobile_sdk/e01;Lads_mobile_sdk/if1;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorManager"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    .line 54
    iput-object p2, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 55
    iput-object p3, p0, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    .line 56
    iput-object p4, p0, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    .line 57
    iput-object p5, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    .line 58
    iput-object p6, p0, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    .line 59
    iput-object p7, p0, Lads_mobile_sdk/ok0;->g:Lads_mobile_sdk/o21;

    .line 60
    iput-object p8, p0, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 61
    iput-object p9, p0, Lads_mobile_sdk/ok0;->i:Lads_mobile_sdk/e01;

    .line 62
    iput-object p10, p0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/ok0;)Lads_mobile_sdk/ex0;
    .locals 0

    .line 48
    iget-object p0, p0, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/ok0;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    .line 5630
    instance-of v3, v2, Lads_mobile_sdk/sj0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/sj0;

    iget v4, v3, Lads_mobile_sdk/sj0;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/sj0;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/sj0;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/sj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/sj0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 5705
    iget v5, v3, Lads_mobile_sdk/sj0;->f:I

    const-string v6, "Failed to show debug menu dialog"

    const-string v7, "exception"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v1, v3, Lads_mobile_sdk/sj0;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v3, Lads_mobile_sdk/sj0;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/sj0;->a:Lads_mobile_sdk/ok0;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_8

    .line 5706
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v3, Lads_mobile_sdk/sj0;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v3, Lads_mobile_sdk/sj0;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/sj0;->a:Lads_mobile_sdk/ok0;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2

    .line 5707
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5713
    iget-object v2, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5714
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_4
    move-object/from16 v2, p1

    .line 5717
    iput-object v2, v1, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    move-object/from16 v2, p2

    .line 5718
    iput-object v2, v1, Lads_mobile_sdk/ok0;->m:Ljava/lang/String;

    move-object/from16 v2, p3

    .line 5719
    iput-object v2, v1, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    .line 5720
    iput-object v0, v1, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    .line 5722
    iget-object v2, v1, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->S0:Lads_mobile_sdk/s11;

    .line 6244
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 6245
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v13

    .line 6246
    iget-object v13, v13, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v14, 0x6

    const-string v15, "No Activity context available for displaying the debug menu."

    const-string v8, "<set-?>"

    const-string v9, "Can not display debug menu without an Activity context."

    const-string v10, "getPackageName(...)"

    if-nez v13, :cond_d

    .line 6247
    invoke-static {v2, v5, v12, v0}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 6248
    :try_start_2
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 6250
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 6251
    invoke-static {v9, v11}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6252
    invoke-static {v15, v11, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 6253
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6254
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 6257
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6258
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6330
    iput-object v5, v1, Lads_mobile_sdk/ok0;->p:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 6331
    :try_start_4
    iput-object v1, v3, Lads_mobile_sdk/sj0;->a:Lads_mobile_sdk/ok0;

    iput-object v2, v3, Lads_mobile_sdk/sj0;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/sj0;->c:Lads_mobile_sdk/rr3;

    const/4 v5, 0x1

    iput v5, v3, Lads_mobile_sdk/sj0;->f:I

    invoke-virtual {v1, v0, v3}, Lads_mobile_sdk/ok0;->a(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v4, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v1, v2

    move-object v4, v1

    :goto_1
    move-object v2, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v2

    .line 6333
    :goto_2
    :try_start_5
    iget-object v3, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6334
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6335
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 6338
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    iput-boolean v5, v7, Lads_mobile_sdk/uj2;->m:Z

    .line 6339
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 6340
    iget-object v1, v1, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v6, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v1, v2

    goto :goto_1

    .line 6342
    :goto_3
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6861
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_7

    .line 6862
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 6863
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 6864
    :cond_7
    :goto_4
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v1, v2

    .line 6872
    :goto_5
    :try_start_7
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 6876
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_c

    .line 6878
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_8

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    .line 6884
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 6890
    :cond_8
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 6891
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 6892
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v0

    .line 6893
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 6894
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 6895
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 6896
    :cond_c
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 6897
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 6931
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v5, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 6932
    :try_start_9
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_e

    .line 6934
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 6935
    invoke-static {v9, v11}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6936
    invoke-static {v15, v11, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 6937
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6938
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 6941
    :cond_e
    :try_start_a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6942
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7014
    iput-object v5, v1, Lads_mobile_sdk/ok0;->p:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 7015
    :try_start_b
    iput-object v1, v3, Lads_mobile_sdk/sj0;->a:Lads_mobile_sdk/ok0;

    iput-object v2, v3, Lads_mobile_sdk/sj0;->b:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/sj0;->c:Lads_mobile_sdk/rr3;

    const/4 v5, 0x2

    iput v5, v3, Lads_mobile_sdk/sj0;->f:I

    invoke-virtual {v1, v0, v3}, Lads_mobile_sdk/ok0;->a(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-ne v0, v4, :cond_f

    :goto_6
    return-object v4

    :cond_f
    move-object v1, v2

    move-object v4, v1

    :goto_7
    move-object v2, v4

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v4, v2

    .line 7017
    :goto_8
    :try_start_c
    iget-object v3, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7018
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7019
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 7022
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    iput-boolean v5, v7, Lads_mobile_sdk/uj2;->m:Z

    .line 7023
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7024
    iget-object v1, v1, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v6, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object v1, v2

    goto :goto_7

    .line 7026
    :goto_9
    :try_start_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7582
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_10

    .line 7583
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 7584
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    goto :goto_c

    .line 7585
    :cond_10
    :goto_a
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 7586
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_a
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v1, v2

    .line 8146
    :goto_c
    :try_start_e
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 8150
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_15

    .line 8152
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_11

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_11

    .line 8158
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 8164
    :cond_11
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    .line 8165
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 8166
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_12

    throw v0

    .line 8167
    :cond_12
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 8168
    :cond_13
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 8169
    :cond_14
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 8170
    :cond_15
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 8171
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    instance-of v2, v1, Lads_mobile_sdk/mk0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/mk0;

    iget v3, v2, Lads_mobile_sdk/mk0;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/mk0;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/mk0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/mk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lads_mobile_sdk/mk0;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 467
    iget v3, v8, Lads_mobile_sdk/mk0;->i:I

    const-string v4, "defaultValue"

    const-string v5, "key"

    const-string v6, "https://www.google.com/dfp/sendDebugData"

    const-string v7, "gads:drx_debug:send_debug_data_url"

    const/4 v10, 0x0

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_15

    :pswitch_1
    iget-object v2, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :pswitch_2
    iget-object v0, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v3, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v4, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ok0;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v0

    move-object v12, v3

    move-object v13, v4

    :goto_1
    move-object v3, v5

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :pswitch_3
    iget-object v0, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;

    iget-object v3, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v4, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v5, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/ok0;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    move-object v13, v5

    move-object v5, v6

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :pswitch_4
    iget-boolean v0, v8, Lads_mobile_sdk/mk0;->f:Z

    iget-object v3, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v13, Lads_mobile_sdk/rr3;

    iget-object v14, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ok0;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v9, v1

    move-object v1, v3

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    goto/16 :goto_18

    :pswitch_5
    iget-object v2, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_a

    :pswitch_6
    iget-object v2, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_b

    :pswitch_7
    iget-object v0, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v3, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v4, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ok0;

    :try_start_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v6, v0

    move-object v12, v3

    move-object v13, v4

    :goto_2
    move-object v3, v5

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    goto/16 :goto_9

    :pswitch_8
    iget-object v0, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;

    iget-object v3, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v4, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v5, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/ok0;

    :try_start_8
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    move-object v13, v5

    move-object v5, v6

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    goto/16 :goto_5

    :pswitch_9
    iget-boolean v0, v8, Lads_mobile_sdk/mk0;->f:Z

    iget-object v3, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iget-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iget-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    check-cast v13, Lads_mobile_sdk/rr3;

    iget-object v14, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ok0;

    :try_start_9
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v9, v1

    move-object v1, v3

    goto :goto_3

    :catchall_7
    move-exception v0

    goto/16 :goto_c

    :pswitch_a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 468
    iget-object v1, v0, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    sget-object v3, Lads_mobile_sdk/s11;->V0:Lads_mobile_sdk/s11;

    iget-object v12, v0, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    .line 978
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 979
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v14

    .line 980
    iget-object v14, v14, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v15, "No Activity context available for starting debug signals."

    const/4 v9, 0x6

    if-nez v14, :cond_10

    .line 981
    invoke-static {v1, v3, v13, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v12

    .line 982
    :try_start_a
    iget-object v1, v0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 984
    invoke-static {v15, v11, v9}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 985
    iget-object v0, v0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 986
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    invoke-static {v12, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 989
    :cond_1
    :try_start_b
    iget-object v3, v0, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 990
    iget-object v3, v3, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 991
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 994
    iget-object v9, v0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iget-object v13, v0, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    iget-object v14, v0, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    iput-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-boolean v3, v8, Lads_mobile_sdk/mk0;->f:Z

    const/4 v15, 0x1

    iput v15, v8, Lads_mobile_sdk/mk0;->i:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    invoke-static {v9, v13, v14, v8}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    if-ne v9, v2, :cond_2

    goto/16 :goto_14

    :cond_2
    move-object v14, v0

    move v0, v3

    move-object v13, v12

    .line 996
    :goto_3
    :try_start_c
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 997
    iget-object v9, v14, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 998
    iget-object v9, v9, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 999
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1001
    iget-object v3, v14, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 1002
    iget-object v3, v3, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1003
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_5

    .line 1004
    iget-object v0, v14, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_5

    .line 1005
    iget-object v0, v14, Lads_mobile_sdk/ok0;->i:Lads_mobile_sdk/e01;

    .line 1007
    iget-object v3, v14, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    sget-object v4, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v7, v6, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1052
    iput-object v14, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-object v0, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;

    const/4 v4, 0x2

    iput v4, v8, Lads_mobile_sdk/mk0;->i:I

    .line 1053
    iget-object v4, v14, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    iget-object v5, v14, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    .line 1054
    iget-object v6, v14, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    invoke-static {v6, v3, v4, v5, v8}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-ne v3, v2, :cond_3

    goto/16 :goto_14

    :cond_3
    move-object v4, v12

    move-object v5, v14

    .line 1056
    :goto_4
    :try_start_d
    check-cast v3, Landroid/net/Uri;

    .line 1076
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1078
    iput-object v5, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :try_start_e
    iput-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v4, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v3, 0x3

    :try_start_f
    iput v3, v8, Lads_mobile_sdk/mk0;->i:I

    const/16 v3, 0x1e

    invoke-static {v0, v6, v11, v8, v3}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-ne v0, v2, :cond_4

    goto/16 :goto_14

    :cond_4
    move-object v6, v1

    move-object v12, v4

    goto/16 :goto_2

    :catchall_8
    move-exception v0

    move-object v12, v4

    goto/16 :goto_c

    :catchall_9
    move-exception v0

    move-object v5, v13

    :goto_5
    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_c

    :cond_5
    move-object v6, v1

    move-object v3, v14

    .line 1086
    :goto_6
    :try_start_10
    const-string v5, "The device is successfully linked for troubleshooting."

    iput-object v13, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :try_start_11
    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v0, 0x4

    :try_start_12
    iput v0, v8, Lads_mobile_sdk/mk0;->i:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1087
    :try_start_13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1088
    invoke-static/range {v3 .. v9}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :goto_7
    if-ne v0, v2, :cond_7

    goto/16 :goto_14

    :cond_7
    move-object v2, v12

    move-object v3, v13

    .line 1089
    :goto_8
    :try_start_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_a
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    :goto_9
    move-object v12, v3

    move-object v13, v4

    goto :goto_c

    .line 1091
    :cond_8
    :try_start_15
    iput-object v13, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    const/4 v0, 0x5

    iput v0, v8, Lads_mobile_sdk/mk0;->i:I

    invoke-virtual {v14, v8}, Lads_mobile_sdk/ok0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-ne v0, v2, :cond_9

    goto/16 :goto_14

    :cond_9
    move-object v2, v12

    move-object v3, v13

    .line 1093
    :goto_a
    :try_start_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1589
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_a

    .line 1590
    check-cast v0, Lads_mobile_sdk/i01;

    .line 1591
    invoke-static {v0, v10}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1592
    :cond_a
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :goto_b
    move-object v12, v2

    move-object v13, v3

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v13, v12

    .line 1600
    :goto_c
    :try_start_17
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1604
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_f

    .line 1606
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    .line 1612
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1618
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e

    .line 1619
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    .line 1620
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c

    throw v0

    .line 1621
    :cond_c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1622
    :cond_d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1623
    :cond_e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1624
    :cond_f
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 1625
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1659
    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v3, v1, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v12

    .line 1660
    :try_start_19
    iget-object v1, v0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_11

    .line 1662
    invoke-static {v15, v11, v9}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1663
    iget-object v0, v0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1664
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    invoke-static {v12, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1667
    :cond_11
    :try_start_1a
    iget-object v3, v0, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 1668
    iget-object v3, v3, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1669
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1672
    iget-object v13, v0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iget-object v14, v0, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    iget-object v15, v0, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    iput-object v0, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-boolean v3, v8, Lads_mobile_sdk/mk0;->f:Z

    iput v9, v8, Lads_mobile_sdk/mk0;->i:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    invoke-static {v13, v14, v15, v8}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    if-ne v9, v2, :cond_12

    goto/16 :goto_14

    :cond_12
    move-object v14, v0

    move v0, v3

    move-object v13, v12

    .line 1674
    :goto_d
    :try_start_1b
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1675
    iget-object v9, v14, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 1676
    iget-object v9, v9, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1677
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1679
    iget-object v3, v14, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 1680
    iget-object v3, v3, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1681
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v0, :cond_15

    .line 1682
    iget-object v0, v14, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_15

    .line 1683
    iget-object v0, v14, Lads_mobile_sdk/ok0;->i:Lads_mobile_sdk/e01;

    .line 1685
    iget-object v3, v14, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1687
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1729
    sget-object v4, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v7, v6, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1730
    iput-object v14, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-object v0, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;

    const/4 v4, 0x7

    iput v4, v8, Lads_mobile_sdk/mk0;->i:I

    .line 1731
    iget-object v4, v14, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    iget-object v5, v14, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    .line 1732
    iget-object v6, v14, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1733
    invoke-static {v6, v3, v4, v5, v8}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    if-ne v3, v2, :cond_13

    goto/16 :goto_14

    :cond_13
    move-object v4, v12

    move-object v5, v14

    .line 1734
    :goto_e
    :try_start_1c
    check-cast v3, Landroid/net/Uri;

    .line 1754
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1755
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1756
    iput-object v5, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    :try_start_1d
    iput-object v13, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v4, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v1, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->e:Lads_mobile_sdk/e01;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    const/16 v3, 0x8

    :try_start_1e
    iput v3, v8, Lads_mobile_sdk/mk0;->i:I

    const/16 v3, 0x1e

    invoke-static {v0, v6, v11, v8, v3}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-ne v0, v2, :cond_14

    goto :goto_14

    :cond_14
    move-object v6, v1

    move-object v12, v4

    goto/16 :goto_1

    :catchall_e
    move-exception v0

    move-object v12, v4

    goto/16 :goto_18

    :catchall_f
    move-exception v0

    move-object v5, v13

    :goto_f
    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_18

    :cond_15
    move-object v6, v1

    move-object v3, v14

    .line 1764
    :goto_10
    :try_start_1f
    const-string v5, "The device is successfully linked for troubleshooting."

    iput-object v13, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :try_start_20
    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    const/16 v0, 0x9

    :try_start_21
    iput v0, v8, Lads_mobile_sdk/mk0;->i:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 1765
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1766
    invoke-static/range {v3 .. v9}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_16

    goto :goto_11

    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    :goto_11
    if-ne v0, v2, :cond_17

    goto :goto_14

    :cond_17
    move-object v2, v12

    move-object v3, v13

    .line 1767
    :goto_12
    :try_start_23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_10
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    :goto_13
    move-object v12, v3

    move-object v13, v4

    goto :goto_18

    .line 1769
    :cond_18
    :try_start_24
    iput-object v13, v8, Lads_mobile_sdk/mk0;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/mk0;->b:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->c:Ljava/io/Closeable;

    iput-object v11, v8, Lads_mobile_sdk/mk0;->d:Landroid/app/Activity;

    const/16 v0, 0xa

    iput v0, v8, Lads_mobile_sdk/mk0;->i:I

    invoke-virtual {v14, v8}, Lads_mobile_sdk/ok0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    if-ne v0, v2, :cond_19

    :goto_14
    return-object v2

    :cond_19
    move-object v2, v12

    move-object v3, v13

    .line 1771
    :goto_15
    :try_start_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2304
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1a

    .line 2305
    check-cast v0, Lads_mobile_sdk/i01;

    .line 2306
    invoke-static {v0, v10}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 2307
    :cond_1a
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2308
    :goto_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_17
    move-object v12, v2

    move-object v13, v3

    goto :goto_18

    :catchall_11
    move-exception v0

    move-object v13, v12

    .line 2845
    :goto_18
    :try_start_26
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2849
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1f

    .line 2851
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1b

    .line 2857
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2863
    :cond_1b
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1e

    .line 2864
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d

    .line 2865
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1c

    throw v0

    .line 2866
    :cond_1c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2867
    :cond_1d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2868
    :cond_1e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2869
    :cond_1f
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    :catchall_12
    move-exception v0

    move-object v1, v0

    .line 2870
    :try_start_27
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    :catchall_13
    move-exception v0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 2

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    .line 11781
    const-string p2, "In-app preview failed to load because of a system error. Please try again later."

    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move p4, v1

    .line 11782
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lads_mobile_sdk/ok0;->a(ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(ILads_mobile_sdk/ok0;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;IILandroid/content/DialogInterface;I)V
    .locals 0

    .line 11077
    const-string p6, "this$0"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$adInspectorSettingsIndex"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$openAdInspectorIndex"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    if-ne p7, p0, :cond_0

    .line 11236
    iget-object p0, p1, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/fk0;

    invoke-direct {p2, p1, p6}, Lads_mobile_sdk/fk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    .line 11237
    :cond_0
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p7, p0, :cond_1

    .line 11238
    iget-object p0, p1, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/gk0;

    invoke-direct {p2, p1, p6}, Lads_mobile_sdk/gk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    .line 11239
    :cond_1
    iget p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p7, p0, :cond_2

    iget-object p0, p1, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/hk0;

    invoke-direct {p2, p1, p6}, Lads_mobile_sdk/hk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    :cond_2
    if-ne p7, p4, :cond_3

    .line 11240
    iget-object p0, p1, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/ik0;

    invoke-direct {p2, p1, p6}, Lads_mobile_sdk/ik0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    if-ne p7, p5, :cond_4

    .line 11241
    iget-object p0, p1, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/jk0;

    invoke-direct {p2, p1, p6}, Lads_mobile_sdk/jk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    .line 11243
    :cond_4
    sget-object p0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported debug menu option: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 11244
    iget-object p0, p1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 8731
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8923
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 8924
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9117
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ok0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;)V
    .locals 7

    .line 8172
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8470
    iget-object v1, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/tj0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lads_mobile_sdk/tj0;-><init>(Lads_mobile_sdk/ok0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;Lkotlin/coroutines/Continuation;)V

    move-object p0, v2

    .line 8471
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8472
    const-string p1, "<this>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8730
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, p0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final a(Lads_mobile_sdk/ok0;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 9118
    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$diagnosticText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9119
    iget-object p2, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    .line 9120
    invoke-virtual {p2}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 9121
    :cond_0
    const-class p3, Landroid/content/ClipboardManager;

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 9124
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 9125
    const-string p2, "Copy failed, unable to access clipboard"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9130
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9134
    :cond_1
    :try_start_0
    const-string v1, "Ad Information"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9135
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "Copied to clipboard"

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9136
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9139
    :catchall_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 9140
    const-string p2, "Copy failed, possibly due to size"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9145
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9146
    :goto_0
    iget-object v0, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/wj0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/wj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    .line 9147
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 9148
    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9406
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ok0;Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V
    .locals 6

    .line 9749
    const-string p5, "this$0"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$selectedGestureIndex"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10097
    iget-object v0, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    move p5, p4

    move-object p4, p0

    new-instance p0, Lads_mobile_sdk/ck0;

    const/4 p6, 0x0

    invoke-direct/range {p0 .. p6}, Lads_mobile_sdk/ck0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;IILads_mobile_sdk/ok0;ILkotlin/coroutines/Continuation;)V

    .line 10098
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 10099
    const-string p1, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10357
    new-instance v3, Lads_mobile_sdk/ws3;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 9407
    const-string p1, "$selectedGestureIndex"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9748
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static final b(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    instance-of v0, p1, Lads_mobile_sdk/nk0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/nk0;

    iget v1, v0, Lads_mobile_sdk/nk0;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/nk0;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/nk0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/nk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p1, v6, Lads_mobile_sdk/nk0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 453
    iget v1, v6, Lads_mobile_sdk/nk0;->g:I

    const/4 v2, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iget-object v0, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    move-object v1, v0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b

    :pswitch_1
    iget-object p0, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    iget-object v1, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iget-object v3, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/ok0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v4

    move-object v4, p0

    move-object p0, v1

    move-object v1, v10

    move-object v10, v3

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c

    :pswitch_2
    iget-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iget-object v0, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    move-object v1, v0

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :pswitch_3
    iget-object p0, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    iget-object v1, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iget-object v2, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v3, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/ok0;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, p0

    move-object p0, v1

    move-object v10, v2

    move-object v1, v3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    sget-object v1, Lads_mobile_sdk/s11;->T0:Lads_mobile_sdk/s11;

    iget-object v3, p0, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    .line 1018
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1019
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 1020
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v7, "No Activity context available for starting in app preview."

    const/4 v10, 0x1

    if-nez v5, :cond_c

    .line 1021
    invoke-static {p1, v1, v4, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 1022
    :try_start_4
    iget-object p1, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1024
    invoke-static {v7, v9, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1025
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1026
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    invoke-static {v1, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 1029
    :cond_1
    :try_start_5
    iput-object p0, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object v1, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v1, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    iput v10, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {p0, v6}, Lads_mobile_sdk/ok0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v2, v0, :cond_2

    goto/16 :goto_8

    :cond_2
    move-object v4, p1

    move-object v10, v1

    move-object p1, v2

    move-object v1, p0

    move-object p0, v10

    .line 1030
    :goto_1
    :try_start_6
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1040
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_4

    iput-object v10, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    const/4 p1, 0x2

    iput p1, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1041
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-ne p1, v0, :cond_5

    goto/16 :goto_8

    .line 1042
    :cond_4
    instance-of v2, p1, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_5

    check-cast p1, Lads_mobile_sdk/q01;

    .line 1043
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1044
    check-cast p1, Ljava/lang/String;

    iput-object v10, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    const/4 v2, 0x3

    iput v2, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {v1, v4, p1, v6}, Lads_mobile_sdk/ok0;->a(Landroid/app/Activity;Ljava/lang/String;Lads_mobile_sdk/nk0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne p1, v0, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v1, v10

    .line 1046
    :goto_3
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1613
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_6

    .line 1614
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1615
    invoke-static {p1, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1616
    :cond_6
    invoke-static {p0, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :goto_4
    move-object v2, v1

    move-object v1, p0

    move-object p0, p1

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object p0, p1

    move-object v2, v10

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    .line 1624
    :goto_5
    :try_start_8
    invoke-virtual {v2, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1628
    instance-of p1, p0, Lads_mobile_sdk/v24;

    if-nez p1, :cond_b

    .line 1630
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_7

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    .line 1636
    invoke-virtual {v2, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1642
    :cond_7
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_a

    .line 1643
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_9

    .line 1644
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_8

    throw p0

    .line 1645
    :cond_8
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1646
    :cond_9
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 1647
    :cond_a
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 1648
    :cond_b
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object p0, v0

    .line 1649
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    move-object p1, v0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 1683
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1684
    :try_start_a
    iget-object p1, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1686
    invoke-static {v7, v9, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1687
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1688
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    invoke-static {v1, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 1691
    :cond_d
    :try_start_b
    iput-object p0, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object v1, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v1, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object p1, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    const/4 v3, 0x4

    iput v3, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {p0, v6}, Lads_mobile_sdk/ok0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-ne v3, v0, :cond_e

    goto :goto_8

    :cond_e
    move-object v4, p1

    move-object v10, v1

    move-object p1, v3

    move-object v1, p0

    move-object p0, v10

    .line 1692
    :goto_6
    :try_start_c
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1702
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_10

    iput-object v10, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    const/4 p1, 0x5

    iput p1, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1703
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_f

    goto :goto_7

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_7
    if-ne p1, v0, :cond_11

    goto :goto_8

    .line 1704
    :cond_10
    instance-of v3, p1, Lads_mobile_sdk/q01;

    if-eqz v3, :cond_11

    check-cast p1, Lads_mobile_sdk/q01;

    .line 1705
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1706
    check-cast p1, Ljava/lang/String;

    iput-object v10, v6, Lads_mobile_sdk/nk0;->a:Ljava/lang/Object;

    iput-object p0, v6, Lads_mobile_sdk/nk0;->b:Ljava/io/Closeable;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v6, Lads_mobile_sdk/nk0;->d:Landroid/app/Activity;

    iput v2, v6, Lads_mobile_sdk/nk0;->g:I

    invoke-virtual {v1, v4, p1, v6}, Lads_mobile_sdk/ok0;->a(Landroid/app/Activity;Ljava/lang/String;Lads_mobile_sdk/nk0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ne p1, v0, :cond_11

    :goto_8
    return-object v0

    :cond_11
    move-object v1, v10

    .line 1708
    :goto_9
    :try_start_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2312
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_12

    .line 2313
    check-cast p1, Lads_mobile_sdk/i01;

    .line 2314
    invoke-static {p1, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2315
    :cond_12
    invoke-static {p0, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2316
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_b
    move-object v3, v1

    move-object v1, p0

    move-object p0, p1

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object p0, p1

    move-object v3, v10

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    .line 2924
    :goto_c
    :try_start_e
    invoke-virtual {v3, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2928
    instance-of p1, p0, Lads_mobile_sdk/v24;

    if-nez p1, :cond_17

    .line 2930
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_13

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_13

    .line 2936
    invoke-virtual {v3, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2942
    :cond_13
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_16

    .line 2943
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_15

    .line 2944
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_14

    throw p0

    .line 2945
    :cond_14
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2946
    :cond_15
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 2947
    :cond_16
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 2948
    :cond_17
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    move-exception v0

    move-object p0, v0

    .line 2949
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;)V
    .locals 6

    .line 3739
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4082
    iget-object v0, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/ak0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/ak0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    move-object p0, v1

    .line 4083
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4084
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4342
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final b(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 4343
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4688
    iget-object v0, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/bk0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/bk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    .line 4689
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4690
    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4948
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final b(Lads_mobile_sdk/ok0;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 3249
    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$diagnosticText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3451
    iget-object p2, p0, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Lads_mobile_sdk/ex0;->M0()Z

    move-result p2

    .line 3452
    iget-object p3, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p3}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3456
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    .line 3459
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3460
    const-string p2, "Text too large to share, please use Copy"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 3465
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3466
    iget-object v0, p0, Lads_mobile_sdk/ok0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/rj0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/rj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    .line 3467
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3468
    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3726
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 3727
    :cond_1
    iget-object p3, p0, Lads_mobile_sdk/ok0;->g:Lads_mobile_sdk/o21;

    .line 3729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3730
    const-string v0, "Share via"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 3731
    invoke-virtual {p3, p1}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    if-nez p2, :cond_2

    .line 3738
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final c(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 751
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final c(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 595
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final d(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2486
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2997
    iget-object p0, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final d(Lads_mobile_sdk/ok0;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2998
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3514
    iget-object p1, p0, Lads_mobile_sdk/ok0;->g:Lads_mobile_sdk/o21;

    sget-object p2, Lads_mobile_sdk/ok0;->q:Landroid/net/Uri;

    .line 3515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3516
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3517
    const-string v1, "android.support.customtabs.extra.SESSION"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3519
    iget-object p0, p0, Lads_mobile_sdk/ok0;->p:Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    const-string p0, "packageName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3520
    :goto_0
    const-string p0, "com.android.browser.application_id"

    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3522
    invoke-virtual {p1, v0}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lads_mobile_sdk/nk0;)Ljava/lang/Object;
    .locals 8

    .line 5599
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 5603
    const-string v3, "There was no creative pushed from DFP to the device."

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5604
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    move-object v0, p0

    :goto_1
    move-object v3, p1

    move-object v5, p3

    goto :goto_3

    :pswitch_1
    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 5605
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    .line 5612
    :cond_3
    invoke-virtual {p0, v5}, Lads_mobile_sdk/ok0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_2
    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 5613
    const-string p1, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5628
    const-string v2, "The device is successfully linked for creative preview."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5629
    :goto_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5623
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x32

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5624
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid creative preview status: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-static {p1, p2, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    .line 5625
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_8

    goto :goto_4

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5626
    :goto_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 10358
    instance-of v2, v1, Lads_mobile_sdk/dk0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/dk0;

    iget v3, v2, Lads_mobile_sdk/dk0;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/dk0;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/dk0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/dk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/dk0;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 10469
    iget v4, v2, Lads_mobile_sdk/dk0;->k:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lads_mobile_sdk/dk0;->h:I

    iget v9, v2, Lads_mobile_sdk/dk0;->g:I

    iget v10, v2, Lads_mobile_sdk/dk0;->f:I

    iget-object v11, v2, Lads_mobile_sdk/dk0;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v2, Lads_mobile_sdk/dk0;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v2, Lads_mobile_sdk/dk0;->c:Ljava/util/ArrayList;

    iget-object v14, v2, Lads_mobile_sdk/dk0;->b:Landroid/app/Activity;

    iget-object v15, v2, Lads_mobile_sdk/dk0;->a:Lads_mobile_sdk/ok0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v15

    move v15, v4

    move-object v4, v13

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v14

    move v14, v9

    move-object/from16 v9, v16

    goto/16 :goto_4

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    .line 10470
    iget-object v1, v0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object/from16 v1, p1

    :goto_1
    if-nez v1, :cond_5

    .line 10472
    const-string v1, "No Activity context available for displaying the debug menu."

    const/4 v2, 0x6

    invoke-static {v1, v7, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 10473
    iget-object v1, v0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10474
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 10477
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 10479
    const-string v4, "Ad information"

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10480
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .line 10483
    iget-object v4, v0, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 10484
    iget-object v4, v4, Lads_mobile_sdk/qn;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10485
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v9, "get(...)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 10486
    const-string v4, "Creative preview"

    goto :goto_2

    .line 10488
    :cond_6
    const-string v4, "Creative preview (enabled)"

    .line 10490
    :goto_2
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10491
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    .line 10494
    iget-object v4, v0, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 10495
    iget-object v4, v4, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10496
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 10497
    const-string v4, "Troubleshooting (enabled)"

    goto :goto_3

    .line 10499
    :cond_7
    const-string v4, "Troubleshooting"

    .line 10501
    :goto_3
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10502
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v8

    .line 10504
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v11, -0x1

    iput v11, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10505
    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v11, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10506
    iget-object v11, v0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v0, v2, Lads_mobile_sdk/dk0;->a:Lads_mobile_sdk/ok0;

    iput-object v1, v2, Lads_mobile_sdk/dk0;->b:Landroid/app/Activity;

    iput-object v13, v2, Lads_mobile_sdk/dk0;->c:Ljava/util/ArrayList;

    iput-object v12, v2, Lads_mobile_sdk/dk0;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v14, v2, Lads_mobile_sdk/dk0;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput v10, v2, Lads_mobile_sdk/dk0;->f:I

    iput v9, v2, Lads_mobile_sdk/dk0;->g:I

    iput v4, v2, Lads_mobile_sdk/dk0;->h:I

    iput v8, v2, Lads_mobile_sdk/dk0;->k:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10507
    invoke-static {v11, v2}, Lads_mobile_sdk/if1;->c(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_8

    goto/16 :goto_5

    :cond_8
    move v15, v4

    move-object v4, v13

    move-object v13, v12

    move-object v12, v14

    move v14, v9

    move-object v9, v1

    move-object v1, v11

    move-object v11, v0

    .line 10508
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 10509
    const-string v1, "Open ad inspector"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10510
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    iput v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10512
    const-string v1, "Ad inspector settings"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10513
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    iput v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10517
    :cond_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v8, 0x1030226

    invoke-direct {v1, v9, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 10518
    const-string v8, "Select a debug mode"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 10519
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda0;

    invoke-direct {v8, v11}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/ok0;)V

    const-string v9, "Close"

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 10520
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda5;

    invoke-direct {v8, v11}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda5;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 11060
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 11061
    new-instance v9, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda6;

    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda6;-><init>(ILads_mobile_sdk/ok0;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;II)V

    invoke-virtual {v1, v4, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 11075
    iget-object v4, v11, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lads_mobile_sdk/ek0;

    invoke-direct {v5, v1, v7}, Lads_mobile_sdk/ek0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Lads_mobile_sdk/dk0;->a:Lads_mobile_sdk/ok0;

    iput-object v7, v2, Lads_mobile_sdk/dk0;->b:Landroid/app/Activity;

    iput-object v7, v2, Lads_mobile_sdk/dk0;->c:Ljava/util/ArrayList;

    iput-object v7, v2, Lads_mobile_sdk/dk0;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v7, v2, Lads_mobile_sdk/dk0;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput v6, v2, Lads_mobile_sdk/dk0;->k:I

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    :goto_5
    return-object v3

    .line 11076
    :cond_a
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2871
    instance-of v2, v0, Lads_mobile_sdk/pj0;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/pj0;

    iget v3, v2, Lads_mobile_sdk/pj0;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/pj0;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/pj0;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/pj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v2

    iget-object v0, v7, Lads_mobile_sdk/pj0;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 3291
    iget v3, v7, Lads_mobile_sdk/pj0;->i:I

    const-string v4, "key"

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v5, 0x2

    const-string v12, ""

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v13, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v2, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3292
    :cond_2
    iget v3, v7, Lads_mobile_sdk/pj0;->f:I

    iget-object v4, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    iget-object v6, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v8, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ok0;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    move-object v4, v6

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_a

    .line 3293
    :cond_3
    iget-object v3, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ok0;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v8, v5

    goto/16 :goto_2

    .line 3294
    :cond_4
    iget-object v3, v7, Lads_mobile_sdk/pj0;->e:Lads_mobile_sdk/e01;

    iget-object v6, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/e81;

    iget-object v8, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    iget-object v15, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    check-cast v15, Lads_mobile_sdk/rr3;

    iget-object v9, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ok0;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v10, v9

    move-object v9, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    .line 3295
    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3296
    sget-object v0, Lads_mobile_sdk/s11;->U0:Lads_mobile_sdk/s11;

    .line 3928
    sget-object v3, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3, v13}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 3929
    :try_start_4
    iget-object v3, v1, Lads_mobile_sdk/ok0;->i:Lads_mobile_sdk/e01;

    .line 3931
    new-instance v6, Lads_mobile_sdk/e81;

    invoke-direct {v6}, Lads_mobile_sdk/e81;-><init>()V

    .line 3932
    iget-object v0, v1, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3933
    const-string v9, "gads:drx_debug:in_app_preview_status_url"

    .line 3934
    const-string v15, "https://www.google.com/dfp/inAppPreview"

    .line 3935
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultValue"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3977
    sget-object v10, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v9, v15, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3978
    iput-object v1, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    iput-object v8, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    iput-object v8, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    iput-object v6, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    iput-object v3, v7, Lads_mobile_sdk/pj0;->e:Lads_mobile_sdk/e01;

    iput v13, v7, Lads_mobile_sdk/pj0;->i:I

    .line 3979
    iget-object v9, v1, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    .line 3980
    iget-object v10, v1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3981
    invoke-static {v10, v0, v9, v14, v7}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-ne v0, v2, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v10, v1

    move-object v9, v8

    move-object v15, v9

    .line 3982
    :goto_1
    :try_start_5
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "toString(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v0

    .line 3983
    invoke-virtual {v0}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v0

    .line 3984
    iget-object v6, v10, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3985
    const-string v8, "gads:drx_debug:timeout_ms"

    sget-object v16, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v13, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v11, 0x5

    invoke-static {v11, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v17

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3986
    invoke-static/range {v17 .. v18}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    sget-object v11, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v6, v8, v4, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v17

    .line 3987
    invoke-static/range {v17 .. v18}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    .line 3988
    iput-object v10, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    iput-object v15, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    iput-object v9, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    iput-object v14, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    iput-object v14, v7, Lads_mobile_sdk/pj0;->e:Lads_mobile_sdk/e01;

    iput v5, v7, Lads_mobile_sdk/pj0;->i:I

    const/4 v6, 0x0

    const/16 v8, 0x1c

    move-object v5, v4

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v0, v2, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object v3, v9

    move-object v8, v10

    move-object v4, v15

    .line 3989
    :goto_2
    :try_start_6
    check-cast v0, Lads_mobile_sdk/v01;

    .line 4628
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_8

    check-cast v0, Lads_mobile_sdk/i01;

    goto/16 :goto_b

    .line 4629
    :cond_8
    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 4630
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 4631
    check-cast v0, Lads_mobile_sdk/h81;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4632
    :try_start_7
    iget-object v0, v0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v0, :cond_f

    .line 4633
    invoke-static {v0}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v0

    .line 4637
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 4639
    sget-object v5, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v5, "gct"

    .line 4640
    invoke-static {v0, v5, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4641
    iget-object v6, v8, Lads_mobile_sdk/ok0;->h:Lads_mobile_sdk/qn;

    .line 4642
    iget-object v6, v6, Lads_mobile_sdk/qn;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4643
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4645
    const-string v5, "status"

    .line 4646
    invoke-static {v0, v5, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4647
    const-string v5, "0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 4648
    const-string v5, "2"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v13, 0x1

    .line 4649
    :goto_4
    iget-object v5, v8, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v8, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    iput-object v4, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    iput-object v3, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    iput-object v0, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    iput v13, v7, Lads_mobile_sdk/pj0;->f:I

    const/4 v6, 0x3

    iput v6, v7, Lads_mobile_sdk/pj0;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4650
    invoke-static {v5, v13, v7}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v5, v2, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, v3

    move v3, v13

    .line 4651
    :goto_5
    :try_start_8
    iget-object v6, v8, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    if-eqz v3, :cond_d

    iget-object v3, v8, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    move-object v12, v3

    .line 4652
    :cond_d
    :goto_6
    iput-object v4, v7, Lads_mobile_sdk/pj0;->a:Ljava/lang/Object;

    iput-object v5, v7, Lads_mobile_sdk/pj0;->b:Ljava/io/Closeable;

    iput-object v0, v7, Lads_mobile_sdk/pj0;->c:Ljava/lang/Object;

    iput-object v14, v7, Lads_mobile_sdk/pj0;->d:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v7, Lads_mobile_sdk/pj0;->i:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4653
    invoke-static {v6, v12, v7}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v3, v2, :cond_e

    :goto_7
    return-object v2

    :cond_e
    move-object v2, v0

    move-object v3, v5

    .line 4654
    :goto_8
    :try_start_9
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_c

    :goto_9
    move-object v3, v5

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_9

    .line 4655
    :cond_f
    :try_start_a
    new-instance v0, Lads_mobile_sdk/m01;

    .line 4656
    const-string v2, "Null response body when fetching creative preview token"

    .line 4657
    sget-object v5, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 4658
    invoke-direct {v0, v2, v5}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_b

    .line 4659
    :goto_a
    :try_start_b
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v5, 0x6

    invoke-direct {v2, v0, v14, v14, v5}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v2

    .line 5267
    :goto_b
    nop

    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 5268
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5269
    :cond_10
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_c
    move-object v8, v3

    move-object v15, v4

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v8, v9

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v15, v8

    .line 5279
    :goto_d
    :try_start_c
    invoke-virtual {v15, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5283
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_15

    .line 5285
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_11

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11

    .line 5291
    invoke-virtual {v15, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5297
    :cond_11
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    .line 5298
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 5299
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_12

    throw v0

    .line 5300
    :cond_12
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5301
    :cond_13
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5302
    :cond_14
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5303
    :cond_15
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 5304
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 11245
    instance-of v0, p5, Lads_mobile_sdk/kk0;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lads_mobile_sdk/kk0;

    iget v1, v0, Lads_mobile_sdk/kk0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kk0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/kk0;

    invoke-direct {v0, p0, p5}, Lads_mobile_sdk/kk0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lads_mobile_sdk/kk0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11738
    iget v2, v0, Lads_mobile_sdk/kk0;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/kk0;->a:Lads_mobile_sdk/ok0;

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    goto :goto_4

    .line 11739
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p3, :cond_3

    .line 11746
    :try_start_1
    iget-object p3, p0, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p3}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p3

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, p0

    goto :goto_4

    :cond_3
    :goto_1
    const/4 p5, 0x0

    if-nez p3, :cond_4

    .line 11748
    const-string p1, "No Activity context available for showing status dialog."

    const/4 p2, 0x6

    invoke-static {p1, p5, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 11749
    iget-object p1, p0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11750
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 11754
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v5, 0x1030226

    invoke-direct {v2, p3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_5

    .line 11755
    const-string p1, "Error"

    goto :goto_2

    .line 11756
    :cond_5
    const-string p1, "Info"

    :goto_2
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11757
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11758
    new-instance p1, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p1, "Dismiss"

    if-eqz p4, :cond_6

    .line 11761
    :try_start_2
    invoke-virtual {v2, p1, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11762
    const-string p1, "Learn More"

    new-instance p2, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v2, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 11766
    :cond_6
    invoke-virtual {v2, p1, p5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11769
    :goto_3
    iget-object p1, p0, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lads_mobile_sdk/lk0;

    invoke-direct {p2, v2, p5}, Lads_mobile_sdk/lk0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/kk0;->a:Lads_mobile_sdk/ok0;

    iput v3, v0, Lads_mobile_sdk/kk0;->d:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 11770
    :goto_4
    const-string p3, "exception"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11771
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p3

    .line 11774
    invoke-virtual {p3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p4

    iput-boolean v4, p4, Lads_mobile_sdk/uj2;->m:Z

    .line 11775
    invoke-virtual {p3, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 11776
    iget-object p3, p1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11777
    iget-object p1, p1, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast p1, Lads_mobile_sdk/as3;

    const-string p3, "Failed to show status dialog"

    invoke-virtual {p1, p3, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11779
    :cond_7
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    .line 5574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "No debug information"

    if-nez v0, :cond_0

    return-object v1

    .line 5579
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "\\+"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "%20"

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5580
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 5581
    iget-object v0, p0, Lads_mobile_sdk/ok0;->g:Lads_mobile_sdk/o21;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lads_mobile_sdk/o21;->d(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 5585
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 5586
    new-instance v8, Lads_mobile_sdk/qj0;

    invoke-direct {v8, p0, p2}, Lads_mobile_sdk/qj0;-><init>(Lads_mobile_sdk/ok0;Z)V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, "\n\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5597
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 3246
    iget-object v0, p0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    sget-object v1, Lads_mobile_sdk/ae1;->d:Lads_mobile_sdk/ae1;

    new-instance v2, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda7;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3247
    invoke-static {v0, v1, v2, p1}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/ae1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 3248
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/uj0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/uj0;

    iget v1, v0, Lads_mobile_sdk/uj0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/uj0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/uj0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/uj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/uj0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 531
    iget v2, v0, Lads_mobile_sdk/uj0;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/uj0;->c:Lads_mobile_sdk/ok0;

    iget-object v2, v0, Lads_mobile_sdk/uj0;->b:Lads_mobile_sdk/o21;

    iget-object v0, v0, Lads_mobile_sdk/uj0;->a:Lads_mobile_sdk/ok0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 532
    iget-object v2, p0, Lads_mobile_sdk/ok0;->g:Lads_mobile_sdk/o21;

    .line 533
    iget-object p1, p0, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    const-string v5, "key"

    const-string v6, "gads:drx_debug:debug_device_linking_url"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "defaultValue"

    const-string v7, "https://www.google.com/dfp/linkDevice"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    sget-object v5, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p1, v6, v7, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 578
    iput-object p0, v0, Lads_mobile_sdk/uj0;->a:Lads_mobile_sdk/ok0;

    iput-object v2, v0, Lads_mobile_sdk/uj0;->b:Lads_mobile_sdk/o21;

    iput-object p0, v0, Lads_mobile_sdk/uj0;->c:Lads_mobile_sdk/ok0;

    iput v3, v0, Lads_mobile_sdk/uj0;->f:I

    .line 579
    iget-object v3, p0, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    .line 580
    iget-object v5, p0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    invoke-static {v5, p1, v3, v4, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v0

    .line 582
    :goto_1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 585
    const-string v5, "android.support.customtabs.extra.SESSION"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 587
    iget-object v1, v1, Lads_mobile_sdk/ok0;->p:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v4, v1

    goto :goto_2

    :cond_4
    const-string v1, "packageName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 588
    :goto_2
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 590
    invoke-virtual {v2, v3}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    .line 593
    iget-object p1, v0, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 594
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/vj0;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/vj0;

    iget v3, v2, Lads_mobile_sdk/vj0;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/vj0;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/vj0;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/vj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/vj0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 176
    iget v4, v2, Lads_mobile_sdk/vj0;->f:I

    const-string v5, "Failed to show ad info dialog"

    const-string v6, "exception"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/vj0;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/vj0;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/vj0;->a:Lads_mobile_sdk/ok0;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lads_mobile_sdk/vj0;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/vj0;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/vj0;->a:Lads_mobile_sdk/ok0;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    .line 178
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    iget-object v0, v1, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->X0:Lads_mobile_sdk/s11;

    iget-object v11, v1, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    .line 705
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 706
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v13

    .line 707
    iget-object v13, v13, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v14, "Copy"

    const-string v15, "Share"

    const-string v7, "Close"

    const-string v8, "Ad Information"

    const-string v9, "No Activity context available for displaying the ad info dialog."

    const-string v16, ""

    if-nez v13, :cond_f

    .line 708
    invoke-static {v0, v4, v12, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 709
    :try_start_2
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v11, 0x6

    .line 711
    invoke-static {v9, v10, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 712
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 713
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {v4, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 716
    :cond_4
    :try_start_3
    iget-object v9, v1, Lads_mobile_sdk/ok0;->m:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v9, v16

    :cond_5
    const/4 v11, 0x0

    .line 717
    invoke-virtual {v1, v9, v11}, Lads_mobile_sdk/ok0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 718
    iget-object v11, v1, Lads_mobile_sdk/ok0;->m:Ljava/lang/String;

    if-nez v11, :cond_6

    move-object/from16 v11, v16

    :cond_6
    const/4 v12, 0x1

    .line 719
    invoke-virtual {v1, v11, v12}, Lads_mobile_sdk/ok0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 723
    :try_start_4
    new-instance v12, Landroid/app/AlertDialog$Builder;

    const v13, 0x1030226

    invoke-direct {v12, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 724
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 725
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 726
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda12;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda12;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 727
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda13;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda13;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 729
    iget-object v7, v1, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->M0()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 730
    new-instance v7, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v9}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/ok0;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    :cond_7
    new-instance v7, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v9}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/ok0;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    iget-object v7, v1, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lads_mobile_sdk/xj0;

    invoke-direct {v8, v0, v10}, Lads_mobile_sdk/xj0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lads_mobile_sdk/vj0;->a:Lads_mobile_sdk/ok0;

    iput-object v4, v2, Lads_mobile_sdk/vj0;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/vj0;->c:Lads_mobile_sdk/rr3;

    const/4 v12, 0x1

    iput v12, v2, Lads_mobile_sdk/vj0;->f:I

    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v3, :cond_8

    goto/16 :goto_5

    :cond_8
    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    .line 740
    :goto_1
    :try_start_5
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 744
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    const/4 v11, 0x0

    iput-boolean v11, v7, Lads_mobile_sdk/uj2;->m:Z

    .line 745
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 746
    iget-object v6, v2, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 747
    iget-object v2, v2, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1255
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9

    .line 1256
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v11, 0x0

    .line 1257
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1258
    :cond_9
    :goto_3
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move-object v3, v4

    .line 1266
    :goto_4
    :try_start_6
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1270
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_e

    .line 1272
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 1278
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1284
    :cond_a
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d

    .line 1285
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    .line 1286
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_b

    throw v0

    .line 1287
    :cond_b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1288
    :cond_c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1289
    :cond_d
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1290
    :cond_e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1291
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1325
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x1

    invoke-static {v4, v0, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1326
    :try_start_8
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v11, 0x6

    .line 1328
    invoke-static {v9, v10, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1329
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1330
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    invoke-static {v4, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1333
    :cond_10
    :try_start_9
    iget-object v9, v1, Lads_mobile_sdk/ok0;->m:Ljava/lang/String;

    if-nez v9, :cond_11

    move-object/from16 v9, v16

    :cond_11
    const/4 v11, 0x0

    .line 1334
    invoke-virtual {v1, v9, v11}, Lads_mobile_sdk/ok0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 1335
    iget-object v11, v1, Lads_mobile_sdk/ok0;->m:Ljava/lang/String;

    if-nez v11, :cond_12

    move-object/from16 v11, v16

    :cond_12
    const/4 v12, 0x1

    .line 1336
    invoke-virtual {v1, v11, v12}, Lads_mobile_sdk/ok0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1340
    :try_start_a
    new-instance v12, Landroid/app/AlertDialog$Builder;

    const v13, 0x1030226

    invoke-direct {v12, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1341
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1342
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1343
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda12;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda12;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1344
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda13;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda13;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1346
    iget-object v7, v1, Lads_mobile_sdk/ok0;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->M0()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1347
    new-instance v7, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v9}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/ok0;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1352
    :cond_13
    new-instance v7, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v9}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/ok0;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1356
    iget-object v7, v1, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lads_mobile_sdk/xj0;

    invoke-direct {v8, v0, v10}, Lads_mobile_sdk/xj0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lads_mobile_sdk/vj0;->a:Lads_mobile_sdk/ok0;

    iput-object v4, v2, Lads_mobile_sdk/vj0;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/vj0;->c:Lads_mobile_sdk/rr3;

    const/4 v0, 0x2

    iput v0, v2, Lads_mobile_sdk/vj0;->f:I

    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne v0, v3, :cond_14

    :goto_5
    return-object v3

    :cond_14
    move-object v3, v4

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    .line 1357
    :goto_6
    :try_start_b
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 1361
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    const/4 v11, 0x0

    iput-boolean v11, v7, Lads_mobile_sdk/uj2;->m:Z

    .line 1362
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1363
    iget-object v6, v2, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1364
    iget-object v2, v2, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1366
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1909
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_15

    .line 1910
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v11, 0x0

    .line 1911
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    goto :goto_a

    .line 1912
    :cond_15
    :goto_8
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1913
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_9
    move-exception v0

    move-object v3, v4

    .line 2460
    :goto_a
    :try_start_c
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2464
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1a

    .line 2466
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16

    .line 2472
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2478
    :cond_16
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_19

    .line 2479
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_18

    .line 2480
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_17

    throw v0

    .line 2481
    :cond_17
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2482
    :cond_18
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2483
    :cond_19
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2484
    :cond_1a
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 2485
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/yj0;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/yj0;

    iget v3, v2, Lads_mobile_sdk/yj0;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/yj0;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/yj0;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/yj0;-><init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/yj0;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 305
    iget v4, v2, Lads_mobile_sdk/yj0;->k:I

    const-string v5, "Save"

    const-string v6, "Dismiss"

    const-string v7, "Flick"

    const-string v8, "Setup gesture"

    const-string v10, "Shake"

    const-string v11, "Failed to show inspector settings dialog"

    const-string v12, "None"

    const-string v13, "exception"

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ok0;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_15

    :catchall_0
    move-exception v0

    move-object/from16 v18, v11

    goto/16 :goto_17

    .line 306
    :pswitch_1
    iget v4, v2, Lads_mobile_sdk/yj0;->h:I

    iget v7, v2, Lads_mobile_sdk/yj0;->g:I

    iget v10, v2, Lads_mobile_sdk/yj0;->f:I

    iget-object v12, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    iget-object v9, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    move-object/from16 v17, v0

    iget-object v0, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ok0;

    :try_start_1
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    move/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v18, v11

    move-object/from16 v0, v17

    :goto_1
    move-object v4, v14

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v17, v0

    .line 307
    iget-object v15, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_10

    :pswitch_3
    move-object/from16 v17, v0

    .line 308
    iget-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    move-object v14, v4

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/ok0;

    :try_start_3
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v11

    goto/16 :goto_f

    :pswitch_4
    move-object/from16 v17, v0

    .line 309
    iget-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    move-object v14, v4

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/ok0;

    :try_start_4
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v11

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :pswitch_5
    move-object/from16 v17, v0

    .line 310
    iget-object v3, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ok0;

    :try_start_5
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v18, v11

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v17, v0

    .line 311
    iget v0, v2, Lads_mobile_sdk/yj0;->h:I

    iget v4, v2, Lads_mobile_sdk/yj0;->g:I

    iget v7, v2, Lads_mobile_sdk/yj0;->f:I

    iget-object v9, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    iget-object v10, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v12, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ok0;

    :try_start_6
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v23, v0

    move/from16 v24, v4

    move-object/from16 v18, v11

    move-object v4, v12

    move-object/from16 v0, v17

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v17, v0

    .line 312
    iget-object v12, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lads_mobile_sdk/rr3;

    :try_start_7
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_c

    :pswitch_8
    move-object/from16 v17, v0

    .line 313
    iget-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    move-object v14, v9

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ok0;

    :try_start_8
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v11

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v17, v0

    .line 314
    iget-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iget-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    move-object v14, v9

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ok0;

    :try_start_9
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v18, v11

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_2

    :catchall_4
    move-exception v0

    goto/16 :goto_b

    :pswitch_a
    move-object/from16 v17, v0

    .line 315
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    iget-object v0, v1, Lads_mobile_sdk/ok0;->c:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->Y0:Lads_mobile_sdk/s11;

    iget-object v9, v1, Lads_mobile_sdk/ok0;->o:Lads_mobile_sdk/ks3;

    .line 802
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 803
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v15

    .line 804
    iget-object v15, v15, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    move-object/from16 v17, v15

    const-string v15, "No Activity context available for opening ad inspector settings."

    move-object/from16 v18, v11

    const/4 v11, 0x6

    if-nez v17, :cond_11

    .line 805
    invoke-static {v0, v4, v14, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 806
    :try_start_a
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v9, 0x0

    .line 808
    invoke-static {v15, v9, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 809
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 810
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 813
    :cond_1
    :try_start_b
    iget-object v9, v1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v1, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    const/4 v11, 0x1

    iput v11, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    invoke-static {v9, v2}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-ne v9, v3, :cond_2

    goto/16 :goto_14

    :cond_2
    move-object v11, v4

    move-object v14, v11

    move-object v4, v0

    move-object v0, v9

    move-object v9, v1

    .line 815
    :goto_2
    :try_start_c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 816
    iget-object v0, v9, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iget-object v15, v9, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    iget-object v1, v9, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v11, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    move-object/from16 v17, v4

    const/4 v4, 0x2

    iput v4, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    invoke-static {v0, v15, v1, v2}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-ne v0, v3, :cond_3

    goto/16 :goto_14

    :cond_3
    move-object v4, v11

    .line 818
    :goto_3
    :try_start_d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 819
    iput-object v14, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    const/4 v1, 0x0

    iput-object v1, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v9, v2}, Lads_mobile_sdk/ok0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-ne v0, v3, :cond_4

    goto/16 :goto_14

    :cond_4
    move-object v12, v4

    .line 820
    :goto_4
    :try_start_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/4 v1, 0x0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_5
    move-object/from16 v17, v4

    move-object v4, v11

    :cond_6
    move-object v15, v9

    move-object/from16 v0, v17

    .line 824
    :try_start_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 827
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 829
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 833
    iget-object v11, v15, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v15, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    iput v1, v2, Lads_mobile_sdk/yj0;->f:I

    iput v10, v2, Lads_mobile_sdk/yj0;->g:I

    iput v7, v2, Lads_mobile_sdk/yj0;->h:I

    const/4 v12, 0x4

    iput v12, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    invoke-static {v11, v2}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-ne v11, v3, :cond_7

    goto/16 :goto_14

    :cond_7
    move/from16 v23, v7

    move/from16 v24, v10

    move-object v10, v0

    move v7, v1

    move-object v0, v11

    .line 835
    :goto_5
    :try_start_10
    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/oj0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v7, v24

    goto :goto_6

    :cond_9
    move/from16 v7, v23

    .line 840
    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 844
    :try_start_11
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v11, 0x1030226

    invoke-direct {v1, v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 845
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    .line 1313
    new-array v10, v8, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 1314
    new-instance v9, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda8;

    invoke-direct {v9, v0}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1317
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda9;

    invoke-direct {v8, v15}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda9;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1318
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda10;

    invoke-direct {v8, v15}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda10;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1321
    new-instance v19, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v21, v0

    move/from16 v22, v7

    move-object/from16 v20, v15

    :try_start_12
    invoke-direct/range {v19 .. v24}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;-><init>(Lads_mobile_sdk/ok0;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object/from16 v0, v19

    move-object/from16 v15, v20

    :try_start_13
    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1334
    iget-object v0, v15, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lads_mobile_sdk/zj0;

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9}, Lads_mobile_sdk/zj0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object v15, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    const/4 v1, 0x5

    iput v1, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-static {v0, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-ne v0, v3, :cond_a

    goto/16 :goto_14

    :cond_a
    move-object v3, v4

    move-object v4, v14

    :goto_7
    move-object v12, v3

    move-object v14, v4

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v15, v20

    goto :goto_8

    :catchall_6
    move-exception v0

    :goto_8
    move-object v3, v4

    move-object v4, v14

    move-object v2, v15

    .line 1335
    :goto_9
    :try_start_14
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    const/4 v8, 0x0

    iput-boolean v8, v5, Lads_mobile_sdk/uj2;->m:Z

    .line 1340
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1341
    iget-object v1, v2, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1342
    iget-object v1, v2, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    move-object/from16 v9, v18

    invoke-virtual {v1, v9, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_7

    .line 1344
    :goto_a
    :try_start_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1786
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_b

    .line 1787
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 1788
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_b
    const/4 v1, 0x0

    .line 1789
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :catchall_7
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_c

    :catchall_8
    move-exception v0

    :goto_b
    move-object v12, v4

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v12, v11

    :goto_c
    move-object v4, v14

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v12, v4

    .line 1799
    :goto_d
    :try_start_16
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1803
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_10

    .line 1805
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 1811
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1817
    :cond_c
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_f

    .line 1818
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    .line 1819
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_d

    throw v0

    .line 1820
    :cond_d
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1821
    :cond_e
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1822
    :cond_f
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1823
    :cond_10
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    .line 1824
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    :catchall_c
    move-exception v0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    move-object/from16 v9, v18

    .line 1860
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    move-object/from16 v1, p0

    .line 1861
    :try_start_18
    iget-object v0, v1, Lads_mobile_sdk/ok0;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v14, 0x0

    .line 1863
    invoke-static {v15, v14, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1864
    iget-object v0, v1, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1865
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1868
    :cond_12
    :try_start_19
    iget-object v14, v1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v1, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iput v11, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1869
    invoke-static {v14, v2}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    if-ne v11, v3, :cond_13

    goto/16 :goto_14

    :cond_13
    move-object v14, v4

    move-object v15, v14

    move-object v4, v0

    move-object v0, v11

    move-object v11, v1

    .line 1870
    :goto_e
    :try_start_1a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1871
    iget-object v0, v11, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iget-object v1, v11, Lads_mobile_sdk/ok0;->l:Ljava/lang/String;

    move-object/from16 v18, v9

    iget-object v9, v11, Lads_mobile_sdk/ok0;->n:Lcom/google/gson/JsonObject;

    iput-object v11, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    move-object/from16 v17, v4

    const/4 v4, 0x7

    iput v4, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1872
    invoke-static {v0, v1, v9, v2}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_14

    goto/16 :goto_14

    :cond_14
    move-object v4, v11

    .line 1873
    :goto_f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1874
    iput-object v14, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v15, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    const/4 v1, 0x0

    iput-object v1, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    const/16 v0, 0x8

    iput v0, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v4, v2}, Lads_mobile_sdk/ok0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_15

    goto/16 :goto_14

    .line 1875
    :cond_15
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    const/4 v1, 0x0

    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_16
    move-object v0, v4

    goto :goto_11

    :cond_17
    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object v0, v11

    :goto_11
    move-object/from16 v9, v17

    .line 1879
    :try_start_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 1882
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1884
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 1888
    iget-object v11, v0, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    iput-object v0, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iput-object v1, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    iput v4, v2, Lads_mobile_sdk/yj0;->f:I

    iput v10, v2, Lads_mobile_sdk/yj0;->g:I

    iput v7, v2, Lads_mobile_sdk/yj0;->h:I

    const/16 v12, 0x9

    iput v12, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1889
    invoke-static {v11, v2}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-ne v11, v3, :cond_18

    goto/16 :goto_14

    :cond_18
    move-object v12, v1

    move/from16 v23, v7

    move/from16 v24, v10

    move-object v1, v0

    move v10, v4

    move-object v0, v11

    goto/16 :goto_1

    .line 1890
    :goto_12
    :try_start_1c
    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    sget-object v7, Lads_mobile_sdk/oj0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1a

    const/4 v7, 0x2

    if-eq v0, v7, :cond_19

    goto :goto_13

    :cond_19
    move/from16 v10, v24

    goto :goto_13

    :cond_1a
    move/from16 v10, v23

    .line 1895
    :goto_13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 1899
    :try_start_1d
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const v11, 0x1030226

    invoke-direct {v7, v9, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1900
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    .line 2368
    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {v12, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 2369
    new-instance v9, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda8;

    invoke-direct {v9, v0}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2372
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda9;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda9;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2373
    new-instance v8, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda10;

    invoke-direct {v8, v1}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda10;-><init>(Lads_mobile_sdk/ok0;)V

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2376
    new-instance v19, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    move/from16 v22, v10

    :try_start_1e
    invoke-direct/range {v19 .. v24}, Lads_mobile_sdk/ok0$$ExternalSyntheticLambda11;-><init>(Lads_mobile_sdk/ok0;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    :try_start_1f
    invoke-virtual {v7, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2389
    iget-object v0, v1, Lads_mobile_sdk/ok0;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lads_mobile_sdk/zj0;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Lads_mobile_sdk/zj0;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lads_mobile_sdk/yj0;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/yj0;->b:Ljava/io/Closeable;

    iput-object v15, v2, Lads_mobile_sdk/yj0;->c:Ljava/io/Closeable;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->d:Landroid/app/Activity;

    iput-object v9, v2, Lads_mobile_sdk/yj0;->e:Ljava/util/ArrayList;

    const/16 v6, 0xa

    iput v6, v2, Lads_mobile_sdk/yj0;->k:I

    invoke-static {v0, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    if-ne v0, v3, :cond_1b

    :goto_14
    return-object v3

    :cond_1b
    move-object v3, v15

    :goto_15
    move-object v15, v3

    move-object v14, v4

    goto :goto_18

    :catchall_d
    move-exception v0

    move-object/from16 v1, v20

    goto :goto_16

    :catchall_e
    move-exception v0

    :goto_16
    move-object v2, v1

    move-object v3, v15

    .line 2390
    :goto_17
    :try_start_20
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2391
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2394
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    const/4 v8, 0x0

    iput-boolean v8, v5, Lads_mobile_sdk/uj2;->m:Z

    .line 2395
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2396
    iget-object v1, v2, Lads_mobile_sdk/ok0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2397
    iget-object v1, v2, Lads_mobile_sdk/ok0;->d:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    move-object/from16 v9, v18

    invoke-virtual {v1, v9, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_15

    .line 2399
    :goto_18
    :try_start_21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2878
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1c

    .line 2879
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 2880
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_1c
    const/4 v1, 0x0

    .line 2881
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2882
    :goto_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_f
    move-exception v0

    move-object v15, v3

    move-object v14, v4

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto :goto_1b

    :goto_1a
    move-object v4, v14

    goto :goto_1b

    :catchall_11
    move-exception v0

    move-object v15, v4

    .line 3365
    :goto_1b
    :try_start_22
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3369
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_21

    .line 3371
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1d

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d

    .line 3377
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3383
    :cond_1d
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_20

    .line 3384
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1f

    .line 3385
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1e

    throw v0

    .line 3386
    :cond_1e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3387
    :cond_1f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3388
    :cond_20
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3389
    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :catchall_12
    move-exception v0

    move-object v1, v0

    .line 3390
    :try_start_23
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    :catchall_13
    move-exception v0

    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
