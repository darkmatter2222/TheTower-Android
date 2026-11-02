.class public abstract Lads_mobile_sdk/yr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nr1;


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lads_mobile_sdk/o21;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Lads_mobile_sdk/p02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V
    .locals 1

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 59
    iput-object p2, p0, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 60
    iput-object p3, p0, Lads_mobile_sdk/yr1;->c:Lads_mobile_sdk/o21;

    .line 61
    iput-object p4, p0, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    iput-object p5, p0, Lads_mobile_sdk/yr1;->e:Lads_mobile_sdk/ex0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 66
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 67
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    .line 70
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    .line 72
    new-instance p1, Lads_mobile_sdk/p02;

    invoke-direct {p1, p3}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "GMSG handler for: "

    .line 2
    instance-of v5, v3, Lads_mobile_sdk/qr1;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/qr1;

    iget v6, v5, Lads_mobile_sdk/qr1;->j:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/qr1;->j:I

    goto :goto_0

    :cond_0
    new-instance v5, Lads_mobile_sdk/qr1;

    invoke-direct {v5, v0, v3}, Lads_mobile_sdk/qr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v5, Lads_mobile_sdk/qr1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 139
    iget v7, v5, Lads_mobile_sdk/qr1;->j:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v5, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v4, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v7, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v9, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v10, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v7

    move-object v7, v2

    move-object v2, v3

    move-object v13, v1

    move-object v3, v4

    move-object v1, v9

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_5

    :cond_3
    iget-object v0, v5, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v7, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v9, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v10, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v13, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v7

    move-object v7, v2

    move-object v2, v9

    move-object v9, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_2

    :cond_4
    iget-object v0, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v2, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v4, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v7, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v9, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v7

    move-object v7, v1

    move-object v1, v13

    move-object v13, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v13

    move-object v13, v0

    move-object v0, v9

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 141
    :cond_6
    const-string v7, "ad_mid"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unknown/Unexpected GMSG without a handler: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    const-string v14, "/result"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 146
    iget-object v4, v0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object v0, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v3, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v7, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v13, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v5, Lads_mobile_sdk/qr1;->j:I

    invoke-virtual {v4, v5}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_7

    goto/16 :goto_7

    .line 147
    :cond_7
    :goto_1
    check-cast v4, Lads_mobile_sdk/r41;

    move-object v15, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v4

    goto/16 :goto_6

    :cond_8
    if-eqz v7, :cond_f

    .line 148
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_4

    .line 152
    :cond_9
    iget-object v9, v0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 309
    iput-object v0, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v3, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v7, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v13, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v5, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v5, Lads_mobile_sdk/qr1;->j:I

    invoke-interface {v9, v12, v5}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v6, :cond_a

    goto/16 :goto_7

    :cond_a
    move-object/from16 v20, v13

    move-object v13, v0

    move-object/from16 v0, v20

    .line 310
    :goto_2
    :try_start_0
    iget-object v10, v13, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-eqz v10, :cond_b

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    goto :goto_3

    :cond_b
    move-object v10, v12

    :goto_3
    if-eqz v10, :cond_c

    .line 311
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_c

    .line 312
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " has been garbage collected"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_c
    if-eqz v10, :cond_d

    .line 315
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/r41;

    if-nez v4, :cond_e

    .line 316
    :cond_d
    iget-object v4, v13, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/r41;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_e
    invoke-interface {v9, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v4

    move-object v15, v13

    move-object v13, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 472
    invoke-interface {v9, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 473
    :cond_f
    :goto_4
    iget-object v4, v0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 632
    iput-object v0, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v3, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v7, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v13, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v4, v5, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v5, Lads_mobile_sdk/qr1;->j:I

    invoke-interface {v4, v12, v5}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_10

    goto :goto_7

    .line 633
    :cond_10
    :goto_5
    :try_start_1
    iget-object v9, v0, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/r41;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 796
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v15, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v9

    :goto_6
    if-eqz v16, :cond_13

    .line 797
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatching gmsg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 798
    new-instance v14, Lads_mobile_sdk/sr1;

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lads_mobile_sdk/sr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r41;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 808
    invoke-interface/range {v16 .. v16}, Lads_mobile_sdk/r41;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 809
    iput-object v12, v5, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v5, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v5, Lads_mobile_sdk/qr1;->j:I

    invoke-virtual {v14, v5}, Lads_mobile_sdk/sr1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_11

    :goto_7
    return-object v6

    .line 826
    :cond_11
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 827
    :cond_12
    iget-object v1, v15, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/rr1;

    invoke-direct {v4, v14, v12}, Lads_mobile_sdk/rr1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_9

    .line 829
    :cond_13
    iget-object v0, v15, Lads_mobile_sdk/yr1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->T()Lads_mobile_sdk/eb3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/eb3;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 830
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 832
    :cond_14
    iget-object v0, v15, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 833
    sget-object v1, Lads_mobile_sdk/s11;->R0:Lads_mobile_sdk/s11;

    .line 834
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 835
    iget-object v3, v15, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 982
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v4

    const/4 v5, 0x6

    const-string v6, ". Ad Key: "

    if-nez v4, :cond_1b

    .line 983
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 984
    :try_start_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    sget-object v2, Lads_mobile_sdk/u11;->b:Lads_mobile_sdk/u11;

    iput-object v2, v0, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 985
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 986
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 987
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1134
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_15

    .line 1135
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1136
    :cond_15
    invoke-static {v1, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    .line 1144
    :try_start_3
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1148
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1a

    .line 1150
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16

    .line 1156
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1162
    :cond_16
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_19

    .line 1163
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_18

    .line 1164
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_17

    throw v0

    .line 1165
    :cond_17
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1166
    :cond_18
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1167
    :cond_19
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1168
    :cond_1a
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 1169
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1203
    :cond_1b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1204
    :try_start_5
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    sget-object v2, Lads_mobile_sdk/u11;->b:Lads_mobile_sdk/u11;

    iput-object v2, v0, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 1205
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 1206
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1207
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1391
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_1c

    .line 1392
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1393
    :cond_1c
    invoke-static {v1, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1394
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_4
    move-exception v0

    .line 1581
    :try_start_6
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1585
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_21

    .line 1587
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1d

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1d

    .line 1593
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1599
    :cond_1d
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_20

    .line 1600
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1f

    .line 1601
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1e

    throw v0

    .line 1602
    :cond_1e
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1603
    :cond_1f
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1604
    :cond_20
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1605
    :cond_21
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1606
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_7
    move-exception v0

    .line 1607
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1668
    instance-of v0, p3, Lads_mobile_sdk/wr1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/wr1;

    iget v1, v0, Lads_mobile_sdk/wr1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wr1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/wr1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/wr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/wr1;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1741
    iget v2, v0, Lads_mobile_sdk/wr1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iget-object p2, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/wr1;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iget-object v1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1744
    invoke-interface {p2}, Lads_mobile_sdk/r41;->f()Lads_mobile_sdk/r41;

    move-result-object p3

    .line 1745
    instance-of v2, p3, Lads_mobile_sdk/t53;

    if-eqz v2, :cond_6

    .line 1746
    iget-object p0, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput v5, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-virtual {p0, p3, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_4

    .line 1759
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1760
    :cond_6
    invoke-interface {p2}, Lads_mobile_sdk/r41;->k()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1761
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 1762
    :cond_7
    iget-object v2, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1959
    iput-object p0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iput-object p2, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/wr1;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, p1

    move-object p1, p2

    move-object p2, p3

    .line 1960
    :goto_2
    :try_start_0
    iget-object p3, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_9

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1961
    :cond_9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    iget-object p0, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 2161
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 2162
    :cond_a
    :goto_3
    iget-object p2, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 2364
    iput-object p0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iput-object p2, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object v0, p0

    move-object p0, p2

    .line 2365
    :goto_5
    :try_start_1
    iget-object p2, v0, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2571
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2572
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p1

    .line 2775
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1609
    instance-of v0, p2, Lads_mobile_sdk/tr1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/tr1;

    iget v1, v0, Lads_mobile_sdk/tr1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tr1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/tr1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/tr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/tr1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1610
    iget v2, v0, Lads_mobile_sdk/tr1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1634
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1635
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/tr1;->b:Ljava/lang/String;

    iget-object p0, v0, Lads_mobile_sdk/tr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1636
    iget-object p2, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/tr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/tr1;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/tr1;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 1637
    :cond_4
    :goto_1
    check-cast p2, Lads_mobile_sdk/t53;

    const/4 v1, 0x0

    if-nez p2, :cond_5

    .line 1640
    sget-object p0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 1641
    const-string p0, "Unknown/Unexpected GMSG without a handler: result"

    invoke-static {p0, v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x6

    .line 1642
    invoke-static {p0, v1, p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1643
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1646
    :cond_5
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1647
    const-string v0, "t"

    invoke-static {p1, v0, p1}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 1648
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 1649
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v1

    :goto_2
    if-nez p1, :cond_7

    .line 1650
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1651
    :cond_7
    new-instance v0, Lads_mobile_sdk/vr1;

    invoke-direct {v0, p0, p2, p1, v1}, Lads_mobile_sdk/vr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/t53;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    .line 1664
    iget-object v2, p0, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ur1;

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/ur1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1666
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 2778
    instance-of v0, p3, Lads_mobile_sdk/xr1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/xr1;

    iget v1, v0, Lads_mobile_sdk/xr1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xr1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/xr1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/xr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/xr1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2880
    iget v2, v0, Lads_mobile_sdk/xr1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2884
    iget-object p0, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput v4, v0, Lads_mobile_sdk/xr1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 2885
    :cond_4
    :goto_1
    check-cast p3, Lads_mobile_sdk/t53;

    if-nez p3, :cond_5

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    .line 2886
    iput-object p0, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    iput-object p0, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput v3, v0, Lads_mobile_sdk/xr1;->e:I

    invoke-virtual {p3, p1, p2, v0}, Lads_mobile_sdk/t53;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    .line 2887
    :cond_6
    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1608
    invoke-static {p0, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1667
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;
    .locals 0

    .line 2777
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
