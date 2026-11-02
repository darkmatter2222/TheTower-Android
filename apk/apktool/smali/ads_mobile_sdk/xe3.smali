.class public final Lads_mobile_sdk/xe3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/cw2;

.field public f:Z

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public h:Z

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/g83;Lads_mobile_sdk/dw2;)V
    .locals 1

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalComponentProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/xe3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/xe3;->c:Lads_mobile_sdk/tx;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/xe3;->d:Lads_mobile_sdk/g83;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/xe3;->e:Lads_mobile_sdk/cw2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 16
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/xe3;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p2

    .line 30
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v1, v0, Lads_mobile_sdk/we3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/we3;

    iget v2, v1, Lads_mobile_sdk/we3;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/we3;->i:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/we3;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/we3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lads_mobile_sdk/we3;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 150
    iget v4, v1, Lads_mobile_sdk/we3;->i:I

    const-string v5, "build(...)"

    const-string v6, "builder"

    const-string v7, "newBuilder(...)"

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v2

    move-object v2, v11

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/v01;

    iget-object v11, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v2

    move-object v2, v12

    goto/16 :goto_e

    :pswitch_2
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :pswitch_3
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v12

    move-object v12, v13

    move-object v13, v14

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_11

    :pswitch_4
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :pswitch_5
    iget-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    iget-object v4, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v8, v12

    move-object v12, v13

    move-object v13, v14

    goto :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move/from16 v0, p1

    .line 154
    :goto_1
    iget-object v11, v2, Lads_mobile_sdk/xe3;->d:Lads_mobile_sdk/g83;

    sget-object v12, Lads_mobile_sdk/s11;->D0:Lads_mobile_sdk/s11;

    .line 335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 336
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 337
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 338
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 339
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 340
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 341
    invoke-direct {v14, v15, v9, v10, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 342
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 343
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_b

    .line 344
    invoke-static {v11, v12, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v11

    .line 345
    :try_start_4
    iget-object v8, v2, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 535
    iput-object v2, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v4, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v11, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v9, 0x1

    iput v9, v1, Lads_mobile_sdk/we3;->i:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-ne v10, v3, :cond_1

    goto/16 :goto_10

    :cond_1
    move-object v13, v2

    move-object v12, v4

    move-object v4, v8

    move-object v8, v11

    move v2, v0

    .line 536
    :goto_2
    :try_start_5
    iget-object v0, v13, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/pe3;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, v0, Lads_mobile_sdk/pe3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v9, 0x0

    .line 732
    :try_start_6
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 733
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 734
    :goto_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 929
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 930
    :try_start_7
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 931
    :try_start_8
    iget v10, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 932
    :try_start_9
    invoke-virtual {v9, v10}, Lads_mobile_sdk/ze3;->a(I)V

    .line 933
    invoke-virtual {v9, v0}, Lads_mobile_sdk/ze3;->c(Z)V

    .line 934
    invoke-virtual {v9, v2}, Lads_mobile_sdk/ze3;->b(Z)V

    .line 935
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/af3;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 936
    :try_start_a
    iput-object v0, v4, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 941
    :try_start_b
    iput-object v13, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v12, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iput-object v8, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    iput-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    const/4 v9, 0x0

    iput-object v9, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    iput-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v0, 0x2

    iput v0, v1, Lads_mobile_sdk/we3;->i:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-virtual {v13, v2, v1}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-ne v0, v3, :cond_4

    goto/16 :goto_10

    :cond_4
    move-object v4, v11

    move-object v11, v8

    :goto_5
    :try_start_10
    check-cast v0, Lads_mobile_sdk/v01;

    .line 1133
    instance-of v8, v0, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_5

    .line 1134
    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/i01;

    const/4 v9, 0x0

    .line 1135
    invoke-static {v8, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_5
    const/4 v9, 0x0

    .line 1136
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_6
    move-object v4, v0

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v11

    move-object v11, v8

    goto :goto_8

    :catchall_5
    move-exception v0

    const/4 v9, 0x0

    .line 1148
    :try_start_11
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    move-object v12, v8

    :goto_7
    move-object v4, v11

    move-object v11, v12

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v4, v11

    .line 1157
    :goto_8
    :try_start_12
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1161
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_a

    .line 1163
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    .line 1169
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1175
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    .line 1176
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    .line 1177
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_7

    throw v0

    .line 1178
    :cond_7
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1179
    :cond_8
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1180
    :cond_9
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1181
    :cond_a
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 1182
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1229
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v12, v8, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v11

    .line 1230
    :try_start_14
    iget-object v8, v2, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 1420
    iput-object v2, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v4, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v11, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v9, 0x3

    iput v9, v1, Lads_mobile_sdk/we3;->i:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-ne v10, v3, :cond_c

    goto/16 :goto_10

    :cond_c
    move-object v13, v2

    move-object v12, v4

    move-object v4, v8

    move-object v8, v11

    move v2, v0

    .line 1421
    :goto_9
    :try_start_15
    iget-object v0, v13, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/pe3;

    if-eqz v0, :cond_d

    .line 1422
    iget-object v0, v0, Lads_mobile_sdk/pe3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_d

    .line 1423
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    const/4 v9, 0x0

    .line 1617
    :try_start_16
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v0, :cond_e

    .line 1618
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    .line 1619
    :goto_b
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 1814
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 1815
    :try_start_17
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1816
    :try_start_18
    iget v10, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1817
    :try_start_19
    invoke-virtual {v9, v10}, Lads_mobile_sdk/ze3;->a(I)V

    .line 1818
    invoke-virtual {v9, v0}, Lads_mobile_sdk/ze3;->c(Z)V

    .line 1819
    invoke-virtual {v9, v2}, Lads_mobile_sdk/ze3;->b(Z)V

    .line 1820
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/af3;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1821
    :try_start_1a
    iput-object v0, v4, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 1826
    :try_start_1b
    iput-object v13, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v12, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    :try_start_1c
    iput-object v8, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    :try_start_1d
    iput-object v11, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    const/4 v9, 0x0

    iput-object v9, v1, Lads_mobile_sdk/we3;->e:Lkotlinx/coroutines/sync/Mutex;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    iput-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v0, 0x4

    iput v0, v1, Lads_mobile_sdk/we3;->i:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :try_start_1f
    invoke-virtual {v13, v2, v1}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    if-ne v0, v3, :cond_f

    goto/16 :goto_10

    :cond_f
    move-object v4, v11

    move-object v11, v8

    :goto_c
    :try_start_20
    check-cast v0, Lads_mobile_sdk/v01;

    .line 2055
    instance-of v8, v0, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_10

    .line 2056
    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/i01;

    const/4 v9, 0x0

    .line 2057
    invoke-static {v8, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :cond_10
    const/4 v9, 0x0

    .line 2058
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2059
    :goto_d
    iput-object v13, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v12, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v4, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/we3;->d:Ljava/io/Closeable;

    iput-boolean v2, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v0, 0x5

    iput v0, v1, Lads_mobile_sdk/we3;->i:I

    invoke-virtual {v13, v4, v2, v1}, Lads_mobile_sdk/xe3;->a(Lads_mobile_sdk/v01;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    goto :goto_10

    :cond_11
    move v0, v2

    move-object v11, v12

    move-object v2, v13

    .line 2063
    :goto_e
    instance-of v8, v4, Lads_mobile_sdk/q01;

    const-string v9, "key"

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    .line 2064
    iput v8, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2065
    iget-object v4, v2, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2066
    sget-object v10, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v10, 0x1e

    sget-object v12, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2067
    const-string v13, "gads:paw_cache:refresh_interval_seconds"

    invoke-static {v10, v12, v13, v9}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v9

    .line 2068
    sget-object v10, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v4, v13, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v9

    const/16 v16, 0x1

    goto :goto_f

    :cond_12
    const/4 v8, 0x0

    .line 2069
    instance-of v4, v4, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_14

    .line 2070
    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2071
    iget-object v4, v2, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2072
    sget-object v10, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v10, 0xa

    sget-object v12, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2073
    const-string v13, "gads:paw_cache:retry_delay_seconds"

    invoke-static {v10, v12, v13, v9}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v9

    .line 2074
    sget-object v10, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v4, v13, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v9

    .line 2075
    :goto_f
    iput-object v2, v1, Lads_mobile_sdk/we3;->a:Lads_mobile_sdk/xe3;

    iput-object v11, v1, Lads_mobile_sdk/we3;->b:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v4, 0x0

    iput-object v4, v1, Lads_mobile_sdk/we3;->c:Ljava/lang/Object;

    iput-boolean v0, v1, Lads_mobile_sdk/we3;->f:Z

    const/4 v4, 0x6

    iput v4, v1, Lads_mobile_sdk/we3;->i:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_13

    :goto_10
    return-object v3

    :cond_13
    move-object v4, v11

    goto/16 :goto_1

    .line 2076
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catchall_a
    move-exception v0

    move-object v4, v11

    move-object v11, v8

    goto :goto_12

    :catchall_b
    move-exception v0

    const/4 v9, 0x0

    .line 2251
    :try_start_21
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    :catchall_c
    move-exception v0

    move-object v12, v8

    :goto_11
    move-object v4, v11

    move-object v11, v12

    goto :goto_12

    :catchall_d
    move-exception v0

    move-object v4, v11

    .line 2297
    :goto_12
    :try_start_22
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2301
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_19

    .line 2303
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_15

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_15

    .line 2309
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2315
    :cond_15
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_18

    .line 2316
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_17

    .line 2317
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_16

    throw v0

    .line 2318
    :cond_16
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2319
    :cond_17
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2320
    :cond_18
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2321
    :cond_19
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :catchall_e
    move-exception v0

    move-object v1, v0

    .line 2322
    :try_start_23
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lads_mobile_sdk/xe3;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v2, Lads_mobile_sdk/qe3;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/qe3;

    iget v4, v3, Lads_mobile_sdk/qe3;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/qe3;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/qe3;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/qe3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/qe3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 65
    iget v5, v3, Lads_mobile_sdk/qe3;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 67
    :cond_3
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 68
    :cond_4
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 69
    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object v2, v0, Lads_mobile_sdk/xe3;->d:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->E0:Lads_mobile_sdk/s11;

    .line 216
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 217
    new-instance v13, Lads_mobile_sdk/ks3;

    .line 218
    new-instance v14, Lads_mobile_sdk/n03;

    invoke-direct {v14}, Lads_mobile_sdk/n03;-><init>()V

    .line 219
    new-instance v15, Lads_mobile_sdk/tn1;

    invoke-direct {v15}, Lads_mobile_sdk/tn1;-><init>()V

    .line 220
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 221
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 222
    invoke-direct {v13, v14, v15, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 223
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 224
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v7, :cond_f

    .line 225
    invoke-static {v2, v5, v12, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 226
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 227
    iget-object v5, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 228
    iget-object v5, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 229
    sget-object v7, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    .line 230
    iput-object v7, v5, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 232
    iget-boolean v5, v0, Lads_mobile_sdk/xe3;->f:Z

    if-eqz v5, :cond_7

    .line 233
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iput v10, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 234
    :goto_1
    :try_start_5
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 236
    :cond_7
    :try_start_6
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iput v9, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v0, v4, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 237
    :goto_2
    :try_start_7
    check-cast v2, Lads_mobile_sdk/v01;

    .line 390
    :goto_3
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_9

    .line 391
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    .line 392
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 393
    :cond_9
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_4
    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    .line 401
    :goto_5
    :try_start_8
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 405
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_e

    .line 407
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_a

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_a

    .line 413
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 419
    :cond_a
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d

    .line 420
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    .line 421
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_b

    throw v0

    .line 422
    :cond_b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 423
    :cond_c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 424
    :cond_d
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 425
    :cond_e
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 426
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 460
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 461
    :try_start_a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 462
    iget-object v5, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 463
    iget-object v5, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 464
    sget-object v7, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    .line 465
    iput-object v7, v5, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 467
    iget-boolean v5, v0, Lads_mobile_sdk/xe3;->f:Z

    if-eqz v5, :cond_11

    .line 468
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x3

    iput v5, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-ne v0, v4, :cond_10

    goto :goto_7

    :cond_10
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 469
    :goto_6
    :try_start_b
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    .line 471
    :cond_11
    :try_start_c
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x4

    iput v5, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-ne v0, v4, :cond_12

    :goto_7
    return-object v4

    :cond_12
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 472
    :goto_8
    :try_start_d
    check-cast v2, Lads_mobile_sdk/v01;

    .line 662
    :goto_9
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_13

    .line 663
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    .line 664
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 665
    :cond_13
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_a
    move-object v2, v3

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v1, v2

    .line 673
    :goto_b
    :try_start_e
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 677
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_18

    .line 679
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_14

    .line 685
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 691
    :cond_14
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    .line 692
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16

    .line 693
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_15

    throw v0

    .line 694
    :cond_15
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 695
    :cond_16
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 696
    :cond_17
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 697
    :cond_18
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 698
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/v01;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 2330
    instance-of v0, p3, Lads_mobile_sdk/se3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/se3;

    iget v1, v0, Lads_mobile_sdk/se3;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/se3;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/se3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/se3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/se3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2481
    iget v2, v0, Lads_mobile_sdk/se3;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p2, v0, Lads_mobile_sdk/se3;->d:Z

    iget-object p1, v0, Lads_mobile_sdk/se3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/se3;->b:Lads_mobile_sdk/v01;

    iget-object v0, v0, Lads_mobile_sdk/se3;->a:Lads_mobile_sdk/xe3;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2482
    iget-object p3, p0, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 2726
    iput-object p0, v0, Lads_mobile_sdk/se3;->a:Lads_mobile_sdk/xe3;

    iput-object p1, v0, Lads_mobile_sdk/se3;->b:Lads_mobile_sdk/v01;

    iput-object p3, v0, Lads_mobile_sdk/se3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p2, v0, Lads_mobile_sdk/se3;->d:Z

    iput v3, v0, Lads_mobile_sdk/se3;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 2727
    :goto_1
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/pe3;

    .line 2728
    new-instance v2, Lads_mobile_sdk/pe3;

    iget-object v3, v0, Lads_mobile_sdk/xe3;->c:Lads_mobile_sdk/tx;

    iget-object v5, v0, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    invoke-direct {v2, v3, v5, p1}, Lads_mobile_sdk/pe3;-><init>(Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/v01;)V

    .line 2731
    instance-of v3, p1, Lads_mobile_sdk/q01;

    if-eqz v3, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2732
    iget-object v3, v0, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    .line 2733
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v3, v1, Lads_mobile_sdk/pe3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2735
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, v1, Lads_mobile_sdk/pe3;->d:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v3

    if-ltz v3, :cond_5

    goto :goto_2

    .line 2736
    :cond_5
    iget-object v1, v1, Lads_mobile_sdk/pe3;->b:Lads_mobile_sdk/v01;

    .line 2737
    instance-of v1, v1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_7

    .line 2738
    :cond_6
    :goto_2
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2741
    iget-object v3, v0, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    :cond_7
    :goto_3
    iget-object v1, v0, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    :try_start_1
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 2977
    iget-object v0, v0, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    .line 2980
    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2982
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3206
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3207
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 3208
    instance-of v0, p1, Lads_mobile_sdk/te3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/te3;

    iget v1, v0, Lads_mobile_sdk/te3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/te3;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/te3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/te3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/te3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3259
    iget v2, v0, Lads_mobile_sdk/te3;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/te3;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/te3;->a:Lads_mobile_sdk/xe3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3260
    iget-object p1, p0, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 3409
    iput-object p0, v0, Lads_mobile_sdk/te3;->a:Lads_mobile_sdk/xe3;

    iput-object p1, v0, Lads_mobile_sdk/te3;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/te3;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 3410
    :goto_1
    :try_start_0
    iget-boolean p1, v0, Lads_mobile_sdk/xe3;->h:Z

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 3563
    :cond_4
    :try_start_1
    iput-boolean v3, v0, Lads_mobile_sdk/xe3;->h:Z

    .line 3564
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3714
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3715
    iget-object v1, v0, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->E0()Z

    move-result v1

    iput-boolean v1, v0, Lads_mobile_sdk/xe3;->f:Z

    if-eqz v1, :cond_5

    .line 3717
    iget-object v5, v0, Lads_mobile_sdk/xe3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/ue3;

    invoke-direct {v1, v0, v4}, Lads_mobile_sdk/ue3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    .line 3718
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3719
    const-string v2, "<this>"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "block"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3977
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3978
    iget-object v1, v0, Lads_mobile_sdk/xe3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ve3;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/ve3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    .line 3979
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4237
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v5, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v7, v6

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_5
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 4238
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 2329
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/xe3;->b(Lads_mobile_sdk/xe3;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 4240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accept_3p_cookie"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4243
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    const-string v1, "requester_type_6"

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 4244
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    .line 4245
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    move-result-object p1

    .line 4246
    iget-object v0, p0, Lads_mobile_sdk/xe3;->e:Lads_mobile_sdk/cw2;

    .line 4247
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rf3;

    .line 4248
    invoke-interface {v0, p1}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/rf3;

    move-result-object v0

    .line 4249
    invoke-interface {v0, p1}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4250
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->c()Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4251
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->b()Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4252
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->a()Lads_mobile_sdk/sf3;

    move-result-object p1

    .line 4253
    invoke-interface {p1}, Lads_mobile_sdk/sf3;->a()Lads_mobile_sdk/eh3;

    move-result-object p1

    .line 4254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4255
    invoke-static {p1, p2}, Lads_mobile_sdk/eh3;->a(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 699
    instance-of v2, v0, Lads_mobile_sdk/re3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/re3;

    iget v3, v2, Lads_mobile_sdk/re3;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/re3;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/re3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/re3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/re3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 774
    iget v4, v2, Lads_mobile_sdk/re3;->g:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v4, v2, Lads_mobile_sdk/re3;->d:Z

    iget-object v8, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v10, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 775
    invoke-static {v7, v6, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v9

    .line 776
    iget-object v8, v1, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 989
    iput-object v1, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    iput-object v9, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v8, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v0, p1

    iput-boolean v0, v2, Lads_mobile_sdk/re3;->d:Z

    iput v6, v2, Lads_mobile_sdk/re3;->g:I

    invoke-interface {v8, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v10, v1

    .line 990
    :goto_1
    :try_start_0
    iget-object v4, v10, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/pe3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v11, "build(...)"

    const-string v12, "builder"

    const-string v13, "newBuilder(...)"

    if-eqz v4, :cond_6

    .line 991
    :try_start_1
    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v14, v4, Lads_mobile_sdk/pe3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 993
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p1, v8

    :try_start_2
    iget-wide v7, v4, Lads_mobile_sdk/pe3;->d:J

    invoke-static {v14, v15, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-ltz v7, :cond_5

    move-object/from16 v8, p1

    goto :goto_2

    .line 994
    :cond_5
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 1207
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1208
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v3, v0}, Lads_mobile_sdk/ze3;->b(Z)V

    .line 1210
    invoke-virtual {v3, v6}, Lads_mobile_sdk/ze3;->a(Z)V

    .line 1211
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/af3;

    .line 1212
    iput-object v0, v2, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;

    .line 1213
    iget-object v0, v4, Lads_mobile_sdk/pe3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1214
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1215
    iget-object v0, v4, Lads_mobile_sdk/pe3;->b:Lads_mobile_sdk/v01;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v8, p1

    const/4 v5, 0x0

    .line 1216
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_4

    .line 1217
    :cond_6
    :goto_2
    :try_start_3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 1425
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1426
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v6, v0}, Lads_mobile_sdk/ze3;->b(Z)V

    const/4 v7, 0x0

    .line 1428
    invoke-virtual {v6, v7}, Lads_mobile_sdk/ze3;->a(Z)V

    .line 1429
    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/af3;

    .line 1430
    iput-object v6, v4, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;

    .line 1435
    iget-object v4, v10, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    :cond_7
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1437
    iget-object v6, v10, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    .line 1637
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1638
    iput-object v5, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    iput-object v5, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v5, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x2

    iput v0, v2, Lads_mobile_sdk/re3;->g:I

    invoke-interface {v9, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    :goto_3
    return-object v3

    :cond_8
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    const/4 v5, 0x0

    .line 1836
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
