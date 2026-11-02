.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final f:Lads_mobile_sdk/ej1;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/ej1;)V
    .locals 1

    .line 1
    const-string v0, "signalSourceConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    .line 7
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 8
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    return-void
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    instance-of v2, v1, Lads_mobile_sdk/ak3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ak3;

    iget v3, v2, Lads_mobile_sdk/ak3;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ak3;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ak3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ak3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/ak3;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 265
    iget v4, v2, Lads_mobile_sdk/ak3;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v0, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v2, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableJob;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lads_mobile_sdk/df3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iget-object v4, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iget-object v5, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v8, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CompletableJob;

    iget-object v12, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lads_mobile_sdk/df3; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v15, v8

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object v2, v8

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object v2, v8

    goto/16 :goto_13

    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    iget-object v4, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iget-object v12, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iget-object v13, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v14, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/CompletableJob;

    iget-object v15, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_14

    :cond_4
    iget-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput v10, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/ej1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    .line 269
    :cond_6
    :goto_1
    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v14

    .line 271
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->Companion:Lads_mobile_sdk/nj3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    invoke-direct {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;-><init>()V

    .line 273
    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    .line 274
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    const-string v12, "key"

    const-string v13, "gad:signal_ids_to_skip"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "defaultValue"

    const-string v15, ""

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v12, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v4, v13, v15, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 278
    new-array v4, v10, [Ljava/lang/String;

    const-string v12, ","

    aput-object v12, v4, v5

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 435
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 445
    check-cast v13, Ljava/lang/String;

    .line 446
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lads_mobile_sdk/y11;->a(I)Lads_mobile_sdk/y11;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    :catch_5
    move-object v13, v11

    :goto_3
    if-eqz v13, :cond_7

    .line 607
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 608
    :cond_8
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 610
    iget-object v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a:Ljava/util/Set;

    .line 769
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 770
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lads_mobile_sdk/sh3;

    .line 771
    iget-object v6, v6, Lads_mobile_sdk/sh3;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v6, :cond_9

    .line 772
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 931
    :cond_9
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v6, 0x4

    goto :goto_4

    .line 933
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 934
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lads_mobile_sdk/sh3;

    .line 935
    invoke-virtual {v15}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object v15

    invoke-interface {v15}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 1096
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1097
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lads_mobile_sdk/sh3;

    .line 1100
    instance-of v15, v13, Lads_mobile_sdk/pu;

    if-eqz v15, :cond_e

    .line 1101
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1103
    :cond_e
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1108
    :cond_f
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v13, v1

    goto/16 :goto_a

    :goto_7
    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/pu;

    .line 1109
    iget-object v6, v1, Lads_mobile_sdk/pu;->f:Lads_mobile_sdk/ou;

    .line 1110
    iput-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v15, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v12, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v4, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v1, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    iput v8, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v6, v2}, Lads_mobile_sdk/ou;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-ne v6, v3, :cond_10

    goto/16 :goto_15

    :cond_10
    move-object v14, v15

    move-object v15, v0

    move-object v0, v1

    move-object v1, v6

    .line 1111
    :goto_8
    :try_start_6
    check-cast v1, Lads_mobile_sdk/oe3;

    if-eqz v1, :cond_17

    .line 1139
    sget-object v6, Lads_mobile_sdk/s11;->P0:Lads_mobile_sdk/s11;

    .line 1140
    sget-object v16, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {v6, v8, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1141
    :try_start_7
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    new-instance v7, Lads_mobile_sdk/gh3;

    .line 1142
    iget-object v0, v0, Lads_mobile_sdk/pu;->f:Lads_mobile_sdk/ou;

    .line 1143
    invoke-interface {v0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v0

    invoke-direct {v7, v0, v11, v9}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v7, v8, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 1144
    invoke-interface {v1, v13}, Lads_mobile_sdk/oe3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V

    .line 1145
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1146
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_11

    .line 1147
    check-cast v0, Lads_mobile_sdk/i01;

    .line 1148
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1149
    :cond_11
    :try_start_8
    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 1157
    :try_start_9
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1161
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_16

    .line 1163
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_12

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12

    .line 1169
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1175
    :cond_12
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_15

    .line 1176
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14

    .line 1177
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_13

    throw v0

    .line 1178
    :cond_13
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1179
    :cond_14
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1180
    :cond_15
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1181
    :cond_16
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 1182
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1183
    :cond_17
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_9
    move-object v0, v15

    const/4 v7, 0x3

    const/4 v8, 0x2

    :goto_a
    move-object v15, v14

    goto/16 :goto_7

    .line 1361
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1364
    move-object v7, v6

    check-cast v7, Lads_mobile_sdk/sh3;

    .line 1365
    iget-object v7, v7, Lads_mobile_sdk/sh3;->b:Lads_mobile_sdk/qf3;

    .line 1366
    sget-object v8, Lads_mobile_sdk/qf3;->b:Lads_mobile_sdk/qf3;

    if-ne v7, v8, :cond_19

    .line 1539
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1541
    :cond_19
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1544
    :cond_1a
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1545
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1546
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1726
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1727
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1728
    check-cast v6, Lads_mobile_sdk/sh3;

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    iget-object v7, v6, Lads_mobile_sdk/sh3;->c:Lads_mobile_sdk/ph3;

    .line 1731
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_1c

    if-ne v7, v10, :cond_1b

    .line 1733
    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b:Lkotlinx/coroutines/CoroutineScope;

    goto :goto_d

    :cond_1b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1734
    :cond_1c
    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->c:Lkotlinx/coroutines/CoroutineScope;

    :goto_d
    move-object v14, v7

    .line 1735
    new-instance v7, Lads_mobile_sdk/bk3;

    invoke-direct {v7, v0, v6, v13, v11}, Lads_mobile_sdk/bk3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    .line 1911
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1912
    :cond_1d
    :try_start_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v12, v0

    move-object v0, v1

    move-object v4, v5

    move-object v5, v13

    :cond_1e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sh3;

    .line 1913
    iput-object v12, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v15, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v4, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v0, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    const/4 v6, 0x3

    iput v6, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v12, v1, v5, v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1e

    goto :goto_15

    .line 1915
    :cond_1f
    iput-object v15, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Lads_mobile_sdk/df3; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-ne v0, v3, :cond_20

    goto :goto_15

    :cond_20
    move-object v0, v5

    .line 1923
    :goto_f
    new-instance v3, Lads_mobile_sdk/q01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_15

    :goto_10
    move-object v2, v15

    goto :goto_12

    :goto_11
    move-object v2, v15

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_11

    .line 1924
    :goto_12
    invoke-static {v2, v11, v10, v11}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1925
    new-instance v3, Lads_mobile_sdk/j01;

    invoke-direct {v3, v0, v11, v11, v9}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_15

    .line 1926
    :goto_13
    invoke-static {v2, v11, v10, v11}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1927
    new-instance v3, Lads_mobile_sdk/m01;

    .line 1928
    iget-object v0, v0, Lads_mobile_sdk/df3;->a:Ljava/lang/String;

    .line 1929
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1930
    invoke-direct {v3, v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v14, v15

    .line 1931
    :goto_14
    invoke-static {v14, v11, v10, v11}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1932
    new-instance v3, Lads_mobile_sdk/j01;

    invoke-direct {v3, v0, v11, v11, v9}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    :goto_15
    return-object v3
.end method

.method public static synthetic b(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lads_mobile_sdk/yj3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/yj3;

    iget v1, v0, Lads_mobile_sdk/yj3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yj3;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/yj3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/yj3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/yj3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lads_mobile_sdk/yj3;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/v01;

    iget-object v1, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v6

    move-object v6, p0

    move-object p0, v8

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    move-object v0, v2

    goto/16 :goto_4

    .line 3
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lads_mobile_sdk/s11;->F:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {p1, v2, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 6
    :try_start_2
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->H0()J

    move-result-wide v6

    new-instance v2, Lads_mobile_sdk/zj3;

    invoke-direct {v2, p0, v5}, Lads_mobile_sdk/zj3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/yj3;->f:I

    invoke-static {v6, v7, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, p1

    move-object p1, v2

    move-object v2, v6

    .line 7
    :goto_1
    :try_start_3
    check-cast p1, Lads_mobile_sdk/v01;

    .line 11
    iget-object p0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    iput-object v2, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;
    :try_end_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iput-object v6, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;
    :try_end_4
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-object p1, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/yj3;->f:I

    invoke-virtual {p0}, Lads_mobile_sdk/ej1;->j()Lkotlin/Unit;

    move-result-object p0
    :try_end_5
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object p0, p1

    move-object v0, v2

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object p1, p0

    :goto_3
    move-object p0, v6

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v0, v2

    move-object v1, v6

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v0, p1

    move-object v1, v0

    .line 14
    :goto_4
    :try_start_6
    new-instance p1, Lads_mobile_sdk/r01;

    invoke-direct {p1, p0, v4}, Lads_mobile_sdk/r01;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;I)V

    move-object p0, p1

    .line 15
    :goto_5
    nop

    instance-of p1, p0, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_6

    .line 16
    move-object p1, p0

    check-cast p1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :cond_6
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :goto_6
    move-object p1, p0

    move-object v2, v0

    move-object p0, v1

    .line 26
    :goto_7
    :try_start_7
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 30
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_b

    .line 32
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_7

    .line 38
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 44
    :cond_7
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_a

    .line 45
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_9

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_8

    throw p1

    .line 47
    :cond_8
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 48
    :cond_9
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 49
    :cond_a
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 50
    :cond_b
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    .line 51
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 2
    instance-of v0, p3, Lads_mobile_sdk/ck3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ck3;

    iget v1, v0, Lads_mobile_sdk/ck3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ck3;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ck3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ck3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/ck3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 133
    iget v2, v0, Lads_mobile_sdk/ck3;->e:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p2, v0, Lads_mobile_sdk/ck3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object p1, v0, Lads_mobile_sdk/ck3;->a:Lads_mobile_sdk/sh3;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    :try_start_1
    invoke-static {}, Lads_mobile_sdk/au;->a()Lads_mobile_sdk/bu;

    move-result-object p3

    sget-object v2, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-ne p3, v2, :cond_3

    .line 140
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->K0()J

    move-result-wide v6

    sget-object p3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p3

    if-lez p3, :cond_3

    .line 144
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->K0()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Lkotlin/time/Duration;

    invoke-virtual {p3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->c()J

    move-result-wide v6

    .line 148
    :goto_1
    new-instance p3, Lads_mobile_sdk/dk3;

    invoke-direct {p3, p1, v5}, Lads_mobile_sdk/dk3;-><init>(Lads_mobile_sdk/sh3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/ck3;->a:Lads_mobile_sdk/sh3;

    iput-object p2, v0, Lads_mobile_sdk/ck3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput v4, v0, Lads_mobile_sdk/ck3;->e:I

    invoke-static {v6, v7, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 149
    :cond_4
    :goto_2
    check-cast p3, Lads_mobile_sdk/v01;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 151
    new-instance v0, Lads_mobile_sdk/j01;

    invoke-direct {v0, p3, v5, v5, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p3, v0

    .line 153
    :goto_3
    nop

    instance-of v0, p3, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_b

    .line 154
    sget-object v0, Lads_mobile_sdk/s11;->P0:Lads_mobile_sdk/s11;

    .line 155
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 156
    :try_start_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    new-instance v2, Lads_mobile_sdk/gh3;

    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object p1

    invoke-interface {p1}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object p1

    invoke-direct {v2, p1, v5, v3}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v2, v1, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 157
    check-cast p3, Lads_mobile_sdk/q01;

    invoke-virtual {p3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oe3;

    invoke-interface {p1, p2}, Lads_mobile_sdk/oe3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V

    .line 158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_5

    .line 160
    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_5
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    .line 169
    :try_start_3
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 173
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_a

    .line 175
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_6

    .line 181
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 187
    :cond_6
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_9

    .line 188
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_8

    .line 189
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_7

    throw p1

    .line 190
    :cond_7
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 191
    :cond_8
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 192
    :cond_9
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 193
    :cond_a
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 194
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 195
    :cond_b
    instance-of p2, p3, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->a()Lads_mobile_sdk/lg3;

    move-result-object p2

    sget-object v0, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    if-eq p2, v0, :cond_c

    goto :goto_4

    .line 196
    :cond_c
    new-instance p2, Lads_mobile_sdk/df3;

    .line 197
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object p1

    invoke-interface {p1}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Required signal with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-direct {p2, p1}, Lads_mobile_sdk/df3;-><init>(Ljava/lang/String;)V

    throw p2

    .line 202
    :cond_d
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
