.class public final Lads_mobile_sdk/im2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/r1;

.field public final b:Lads_mobile_sdk/e9;

.field public final c:Lads_mobile_sdk/cl2;

.field public final d:Lads_mobile_sdk/tx;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/xw0;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/cw2;

.field public final i:Lads_mobile_sdk/cw2;

.field public final j:Lkotlinx/coroutines/sync/Mutex;

.field public volatile k:Z

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r1;Lads_mobile_sdk/e9;Lads_mobile_sdk/cl2;Lads_mobile_sdk/tx;Landroid/content/Context;Lads_mobile_sdk/xw0;Lads_mobile_sdk/g83;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .locals 1

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagValueProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStringsProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheAutoRefreshManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/im2;->d:Lads_mobile_sdk/tx;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/im2;->e:Landroid/content/Context;

    .line 12
    iput-object p6, p0, Lads_mobile_sdk/im2;->f:Lads_mobile_sdk/xw0;

    .line 13
    iput-object p7, p0, Lads_mobile_sdk/im2;->g:Lads_mobile_sdk/g83;

    .line 14
    iput-object p8, p0, Lads_mobile_sdk/im2;->h:Lads_mobile_sdk/cw2;

    .line 15
    iput-object p9, p0, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 18
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/im2;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 21
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/im2;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lads_mobile_sdk/o1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/o1;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 22249
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/rx0;

    if-nez v2, :cond_0

    goto :goto_0

    .line 22250
    :cond_0
    invoke-virtual {v2}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/j9;

    if-nez v3, :cond_1

    :goto_0
    return-object p0

    .line 22252
    :cond_1
    invoke-virtual {v3}, Lads_mobile_sdk/j9;->y()Ljava/util/List;

    move-result-object v4

    const-string v5, "getResponsesList(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23031
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23032
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lads_mobile_sdk/d9;

    .line 23033
    invoke-virtual {v8}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 23813
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23815
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v4

    const-string v7, "toBuilder(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/n1;

    .line 23816
    const-string v8, "builder"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23817
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const-string v10, "getAdResponseListsMap(...)"

    const-string v11, "value"

    const-string v12, "getPoolsMap(...)"

    const-string v13, "build(...)"

    const-string v14, "key"

    const-string v15, "<this>"

    if-eqz v9, :cond_5

    .line 24598
    invoke-virtual {v2}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/qx0;

    .line 24599
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24600
    new-instance v3, Lads_mobile_sdk/no0;

    .line 24601
    invoke-virtual {v2}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24602
    invoke-direct {v3, v5}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 24603
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24680
    invoke-virtual {v2, v1}, Lads_mobile_sdk/qx0;->a(Ljava/lang/String;)V

    .line 24681
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/rx0;

    .line 24682
    invoke-virtual {v1}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24683
    new-instance v1, Lads_mobile_sdk/no0;

    .line 24684
    invoke-virtual {v4}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24685
    invoke-direct {v1, v2}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 24686
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24763
    invoke-virtual {v4, v0}, Lads_mobile_sdk/n1;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 24764
    :cond_4
    new-instance v2, Lads_mobile_sdk/no0;

    .line 24765
    invoke-virtual {v4}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24766
    invoke-direct {v2, v3}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 24767
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24825
    invoke-virtual {v4, v0, v1}, Lads_mobile_sdk/n1;->a(Ljava/lang/String;Lads_mobile_sdk/rx0;)V

    goto/16 :goto_2

    .line 24826
    :cond_5
    new-instance v9, Lads_mobile_sdk/no0;

    move-object/from16 v16, v2

    .line 24827
    invoke-virtual {v4}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24828
    invoke-direct {v9, v2}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 24829
    invoke-virtual/range {v16 .. v16}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/qx0;

    .line 24830
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24831
    new-instance v12, Lads_mobile_sdk/no0;

    move-object/from16 v16, v3

    .line 24832
    invoke-virtual {v2}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24833
    invoke-direct {v12, v3}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 24834
    invoke-virtual/range {v16 .. v16}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/i9;

    .line 24835
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24836
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 24837
    invoke-virtual {v3}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24838
    invoke-direct {v7, v8}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 24839
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24944
    invoke-virtual {v3}, Lads_mobile_sdk/i9;->h()V

    .line 24945
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 24946
    invoke-virtual {v3}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24947
    invoke-direct {v7, v8}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 24948
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "values"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25025
    invoke-virtual {v3, v6}, Lads_mobile_sdk/i9;->a(Ljava/util/List;)V

    .line 25026
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/j9;

    .line 25027
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25085
    invoke-virtual {v2, v1, v3}, Lads_mobile_sdk/qx0;->a(Ljava/lang/String;Lads_mobile_sdk/j9;)V

    .line 25086
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/rx0;

    .line 25087
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25145
    invoke-virtual {v4, v0, v1}, Lads_mobile_sdk/n1;->a(Ljava/lang/String;Lads_mobile_sdk/rx0;)V

    .line 25146
    :goto_2
    invoke-virtual {v4}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/o1;

    return-object v0
.end method

.method public static a(Lads_mobile_sdk/im2;Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 17054
    instance-of v2, v1, Lads_mobile_sdk/zl2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/zl2;

    iget v3, v2, Lads_mobile_sdk/zl2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/zl2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/zl2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/zl2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/zl2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 17276
    iget v4, v2, Lads_mobile_sdk/zl2;->j:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lads_mobile_sdk/zl2;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lads_mobile_sdk/zl2;->f:Ljava/lang/String;

    iget-object v6, v2, Lads_mobile_sdk/zl2;->e:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    iget-object v11, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17277
    :cond_2
    iget-object v0, v2, Lads_mobile_sdk/zl2;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v2, Lads_mobile_sdk/zl2;->f:Ljava/lang/String;

    iget-object v6, v2, Lads_mobile_sdk/zl2;->e:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    iget-object v11, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 17278
    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    iget-object v10, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v9

    move-object v13, v10

    :goto_1
    move-object/from16 v17, v4

    goto :goto_2

    .line 17279
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17285
    :try_start_3
    iput-object v0, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    move-object/from16 v1, p1

    iput-object v1, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    move-object/from16 v4, p2

    iput-object v4, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    move-object/from16 v9, p3

    iput-object v9, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/zl2;->j:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/im2;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v13, v0

    move-object v14, v1

    move-object v0, v9

    goto :goto_1

    .line 17286
    :goto_2
    sget-object v1, Lads_mobile_sdk/s11;->K1:Lads_mobile_sdk/s11;

    .line 18077
    sget-object v4, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 18078
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "toString(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18080
    iget-object v7, v13, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    invoke-virtual {v7, v4, v0}, Lads_mobile_sdk/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 18874
    instance-of v7, v0, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_6

    check-cast v0, Lads_mobile_sdk/i01;

    move-object v6, v1

    move-object v7, v6

    goto/16 :goto_7

    .line 18875
    :cond_6
    const-string v7, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 18876
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 18877
    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 18881
    iget-object v0, v13, Lads_mobile_sdk/im2;->d:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 18883
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 18885
    iget-object v0, v13, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v11, Lads_mobile_sdk/am2;

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v19}, Lads_mobile_sdk/am2;-><init>(Ljava/util/ArrayList;Lads_mobile_sdk/im2;Lads_mobile_sdk/j53;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v17

    move-object/from16 v4, v18

    iput-object v13, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    iput-object v14, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    iput-object v9, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    iput-object v1, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/zl2;->e:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/zl2;->f:Ljava/lang/String;

    iput-object v12, v2, Lads_mobile_sdk/zl2;->g:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/zl2;->j:I

    invoke-virtual {v0, v11, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v1

    move-object v7, v6

    move-object v0, v12

    move-object v11, v13

    move-object v10, v14

    .line 18900
    :goto_3
    :try_start_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18901
    iput-object v11, v2, Lads_mobile_sdk/zl2;->a:Lads_mobile_sdk/im2;

    iput-object v10, v2, Lads_mobile_sdk/zl2;->b:Lads_mobile_sdk/j53;

    iput-object v9, v2, Lads_mobile_sdk/zl2;->c:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/zl2;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/zl2;->e:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/zl2;->f:Ljava/lang/String;

    iput-object v0, v2, Lads_mobile_sdk/zl2;->g:Ljava/lang/Object;

    iput v5, v2, Lads_mobile_sdk/zl2;->j:I

    .line 18902
    iget-object v12, v11, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    .line 18903
    invoke-interface {v12}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lads_mobile_sdk/zj2;

    check-cast v12, Lads_mobile_sdk/ek2;

    invoke-virtual {v12, v1}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 18904
    sget-object v12, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v13, Lads_mobile_sdk/rl2;

    invoke-direct {v13, v11, v1, v8}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v13, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    :goto_5
    return-object v3

    .line 18905
    :cond_8
    :goto_6
    check-cast v1, Lads_mobile_sdk/v01;

    goto :goto_4

    .line 18908
    :cond_9
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/om2;

    invoke-direct {v1, v4, v10, v9}, Lads_mobile_sdk/om2;-><init>(Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 19678
    :goto_7
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_a

    .line 19679
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 19680
    invoke-static {v1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19681
    :cond_a
    :try_start_6
    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :goto_8
    move-object v1, v7

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v6, v1

    .line 19691
    :goto_9
    :try_start_7
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 19695
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_f

    .line 19697
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 19703
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 19709
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e

    .line 19710
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    .line 19711
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c

    throw v0

    .line 19712
    :cond_c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 19713
    :cond_d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 19714
    :cond_e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 19715
    :cond_f
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 19716
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    .line 19717
    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v8, v8, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 711
    invoke-static {p0, p1, v0, p2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 712
    instance-of v2, v1, Lads_mobile_sdk/ol2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ol2;

    iget v3, v2, Lads_mobile_sdk/ol2;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ol2;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ol2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ol2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/ol2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1472
    iget v4, v2, Lads_mobile_sdk/ol2;->g:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v3, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    goto :goto_1

    .line 1473
    :pswitch_1
    iget-object v0, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v3, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    :goto_1
    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    .line 1472
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 1474
    :pswitch_2
    iget-object v4, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_12

    .line 1475
    :pswitch_3
    iget-object v0, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v3, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    goto :goto_2

    .line 1476
    :pswitch_4
    iget-object v0, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v3, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    :goto_2
    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    .line 1475
    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    .line 1477
    :pswitch_5
    iget-object v4, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_b

    .line 1478
    :pswitch_6
    iget v0, v2, Lads_mobile_sdk/ol2;->d:I

    iget-object v4, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/jk2;

    iget-object v8, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move v1, v0

    move-object v0, v8

    move-object/from16 v8, v16

    goto/16 :goto_5

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1482
    iget-object v1, v0, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/zj2;

    check-cast v1, Lads_mobile_sdk/ek2;

    .line 1483
    iget-object v4, v1, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1484
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/ko;

    .line 1485
    iget-object v8, v8, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    .line 1486
    invoke-static {v8, v7, v5, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_3

    .line 1488
    :cond_1
    iget-object v1, v1, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p2, :cond_2

    .line 1489
    iget-object v1, v0, Lads_mobile_sdk/im2;->f:Lads_mobile_sdk/xw0;

    check-cast v1, Lads_mobile_sdk/hr;

    .line 1490
    iget-object v1, v1, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1491
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/k30;

    invoke-virtual {v1}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object v1

    .line 1492
    sget-object v4, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_4

    :cond_2
    move v1, v6

    .line 1493
    :goto_4
    iget-object v4, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    .line 1494
    iget-object v4, v4, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    .line 1495
    invoke-interface {v4}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/core/DataStore;

    invoke-interface {v4}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    .line 1496
    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    move-object/from16 v8, p1

    iput-object v8, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput v1, v2, Lads_mobile_sdk/ol2;->d:I

    iput v5, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto/16 :goto_e

    :cond_3
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    .line 1497
    :goto_5
    check-cast v8, Lads_mobile_sdk/o1;

    .line 1504
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1505
    invoke-virtual {v8}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lads_mobile_sdk/rx0;

    invoke-virtual {v10}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v6

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lads_mobile_sdk/j9;

    invoke-virtual {v12}, Lads_mobile_sdk/j9;->x()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_7

    :cond_4
    add-int/2addr v9, v11

    goto :goto_6

    .line 1506
    :cond_5
    iget-object v8, v0, Lads_mobile_sdk/im2;->g:Lads_mobile_sdk/g83;

    sget-object v10, Lads_mobile_sdk/s11;->R1:Lads_mobile_sdk/s11;

    .line 2139
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 2140
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 2141
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 2142
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2143
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 2144
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 2145
    invoke-direct {v12, v13, v14, v15, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2146
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 2147
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v13, "build(...)"

    const-string v14, "value"

    const-string v15, "builder"

    const-string v7, "newBuilder(...)"

    if-nez v5, :cond_11

    .line 2148
    invoke-static {v8, v10, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 2149
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 2150
    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    .line 2787
    invoke-static {}, Lads_mobile_sdk/kk2;->v()Lads_mobile_sdk/hk2;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2788
    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2789
    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2834
    invoke-virtual {v10, v4}, Lads_mobile_sdk/hk2;->a(Lads_mobile_sdk/jk2;)V

    .line 2835
    invoke-virtual {v10, v9}, Lads_mobile_sdk/hk2;->a(I)V

    .line 2836
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/kk2;

    .line 2837
    iput-object v4, v8, Lads_mobile_sdk/uj2;->N:Lads_mobile_sdk/kk2;

    if-eqz v1, :cond_8

    .line 2843
    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v1, 0x2

    iput v1, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/im2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v1, v3, :cond_6

    goto/16 :goto_e

    :cond_6
    move-object v4, v5

    .line 2844
    :goto_8
    :try_start_5
    check-cast v1, Ljava/lang/String;

    .line 2862
    iget-object v7, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v8, Lads_mobile_sdk/pl2;

    invoke-direct {v8, v1}, Lads_mobile_sdk/pl2;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v1, 0x3

    iput v1, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v7, v8, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v1, v3, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object v2, v4

    move-object v3, v5

    goto :goto_9

    .line 2869
    :cond_8
    :try_start_6
    iget-object v1, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    sget-object v4, Lads_mobile_sdk/ql2;->a:Lads_mobile_sdk/ql2;

    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v7, 0x4

    iput v7, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v1, v3, :cond_9

    goto/16 :goto_e

    :cond_9
    move-object v2, v5

    move-object v3, v2

    .line 2871
    :goto_9
    :try_start_7
    iget-object v0, v0, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    invoke-virtual {v0}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object v0

    .line 2872
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2873
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_a

    .line 2875
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3494
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_b

    .line 3495
    check-cast v0, Lads_mobile_sdk/i01;

    .line 3496
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_b
    const/4 v0, 0x0

    .line 3497
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :goto_b
    move-object v5, v3

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v2, v5

    .line 3507
    :goto_c
    :try_start_8
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3511
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_10

    .line 3513
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 3519
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3525
    :cond_c
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_f

    .line 3526
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    .line 3527
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_d

    throw v0

    .line 3528
    :cond_d
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3529
    :cond_e
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3530
    :cond_f
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3531
    :cond_10
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 3532
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3568
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v10, v5, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 3569
    :try_start_a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 3570
    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    .line 4207
    invoke-static {}, Lads_mobile_sdk/kk2;->v()Lads_mobile_sdk/hk2;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4208
    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4209
    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4254
    invoke-virtual {v10, v4}, Lads_mobile_sdk/hk2;->a(Lads_mobile_sdk/jk2;)V

    .line 4255
    invoke-virtual {v10, v9}, Lads_mobile_sdk/hk2;->a(I)V

    .line 4256
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/kk2;

    .line 4257
    iput-object v4, v8, Lads_mobile_sdk/uj2;->N:Lads_mobile_sdk/kk2;

    if-eqz v1, :cond_14

    .line 4263
    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v1, 0x5

    iput v1, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/im2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne v1, v3, :cond_12

    goto :goto_e

    :cond_12
    move-object v4, v5

    .line 4264
    :goto_d
    :try_start_b
    check-cast v1, Ljava/lang/String;

    .line 4282
    iget-object v7, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v8, Lads_mobile_sdk/pl2;

    invoke-direct {v8, v1}, Lads_mobile_sdk/pl2;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v1, 0x6

    iput v1, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v7, v8, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-ne v1, v3, :cond_13

    goto :goto_e

    :cond_13
    move-object v2, v4

    move-object v3, v5

    goto :goto_f

    .line 4289
    :cond_14
    :try_start_c
    iget-object v1, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    sget-object v4, Lads_mobile_sdk/ql2;->a:Lads_mobile_sdk/ql2;

    iput-object v0, v2, Lads_mobile_sdk/ol2;->a:Lads_mobile_sdk/im2;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->b:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/ol2;->c:Ljava/io/Closeable;

    const/4 v7, 0x7

    iput v7, v2, Lads_mobile_sdk/ol2;->g:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-ne v1, v3, :cond_15

    :goto_e
    return-object v3

    :cond_15
    move-object v2, v5

    move-object v3, v2

    .line 4291
    :goto_f
    :try_start_d
    iget-object v0, v0, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    invoke-virtual {v0}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object v0

    .line 4292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4293
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_10

    .line 4295
    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4951
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_17

    .line 4952
    check-cast v0, Lads_mobile_sdk/i01;

    .line 4953
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_17
    const/4 v0, 0x0

    .line 4954
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4955
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_12
    move-object v5, v3

    goto :goto_13

    :catchall_7
    move-exception v0

    move-object v2, v5

    .line 5615
    :goto_13
    :try_start_e
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5619
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1c

    .line 5621
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_18

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_18

    .line 5627
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5633
    :cond_18
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1b

    .line 5634
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1a

    .line 5635
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_19

    throw v0

    .line 5636
    :cond_19
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5637
    :cond_1a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 5638
    :cond_1b
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 5639
    :cond_1c
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 5640
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static a(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 12200
    instance-of v3, v2, Lads_mobile_sdk/xl2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/xl2;

    iget v4, v3, Lads_mobile_sdk/xl2;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/xl2;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/xl2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/xl2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/xl2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 13090
    iget v5, v3, Lads_mobile_sdk/xl2;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v1, v3, Lads_mobile_sdk/xl2;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/xl2;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 13091
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v3, Lads_mobile_sdk/xl2;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/xl2;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    .line 13092
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13093
    iget-object v2, v0, Lads_mobile_sdk/im2;->g:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->L1:Lads_mobile_sdk/s11;

    .line 13684
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 13685
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 13686
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 13687
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 13688
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 13689
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 13690
    invoke-direct {v12, v13, v14, v15, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 13691
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 13692
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_b

    .line 13693
    invoke-static {v2, v5, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 13694
    :try_start_2
    iget-object v0, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v5, Lads_mobile_sdk/yl2;

    invoke-direct {v5, v1}, Lads_mobile_sdk/yl2;-><init>(Lads_mobile_sdk/om2;)V

    iput-object v2, v3, Lads_mobile_sdk/xl2;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/xl2;->b:Lads_mobile_sdk/rr3;

    iput v9, v3, Lads_mobile_sdk/xl2;->e:I

    invoke-virtual {v0, v5, v3}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v1, v2

    move-object v3, v1

    .line 13715
    :goto_1
    :try_start_3
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    .line 13717
    :goto_2
    :try_start_4
    new-instance v2, Lads_mobile_sdk/j01;

    invoke-direct {v2, v0, v10, v10, v7}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v2

    .line 14289
    :goto_3
    nop

    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_5

    .line 14290
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 14291
    invoke-static {v2, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14292
    :cond_5
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :goto_4
    move-object v2, v3

    .line 14300
    :goto_5
    :try_start_5
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 14304
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_a

    .line 14306
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_6

    .line 14312
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 14318
    :cond_6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    .line 14319
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 14320
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_7

    throw v0

    .line 14321
    :cond_7
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 14322
    :cond_8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 14323
    :cond_9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 14324
    :cond_a
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 14325
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 14359
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 14360
    :try_start_7
    iget-object v0, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v5, Lads_mobile_sdk/yl2;

    invoke-direct {v5, v1}, Lads_mobile_sdk/yl2;-><init>(Lads_mobile_sdk/om2;)V

    iput-object v2, v3, Lads_mobile_sdk/xl2;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/xl2;->b:Lads_mobile_sdk/rr3;

    const/4 v1, 0x2

    iput v1, v3, Lads_mobile_sdk/xl2;->e:I

    invoke-virtual {v0, v5, v3}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v0, v4, :cond_c

    :goto_6
    return-object v4

    :cond_c
    move-object v1, v2

    move-object v3, v1

    .line 14381
    :goto_7
    :try_start_8
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    .line 14383
    :goto_8
    :try_start_9
    new-instance v2, Lads_mobile_sdk/j01;

    invoke-direct {v2, v0, v10, v10, v7}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v2

    .line 14992
    :goto_9
    nop

    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_d

    .line 14993
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 14994
    invoke-static {v2, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 14995
    :cond_d
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_a
    return-object v0

    :goto_b
    move-object v2, v3

    .line 15003
    :goto_c
    :try_start_a
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 15007
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_12

    .line 15009
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_e

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_e

    .line 15015
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 15021
    :cond_e
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_11

    .line 15022
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10

    .line 15023
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_f

    throw v0

    .line 15024
    :cond_f
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 15025
    :cond_10
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 15026
    :cond_11
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 15027
    :cond_12
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 15028
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 25147
    instance-of v2, v1, Lads_mobile_sdk/dm2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/dm2;

    iget v3, v2, Lads_mobile_sdk/dm2;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/dm2;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/dm2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/dm2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/dm2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 26071
    iget v4, v2, Lads_mobile_sdk/dm2;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/dm2;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/dm2;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 26072
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lads_mobile_sdk/dm2;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/dm2;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    .line 26073
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26074
    iget-object v1, v0, Lads_mobile_sdk/im2;->g:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->L1:Lads_mobile_sdk/s11;

    .line 26709
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 26710
    new-instance v11, Lads_mobile_sdk/ks3;

    .line 26711
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 26712
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 26713
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 26714
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 26715
    invoke-direct {v11, v12, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 26716
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 26717
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v12, :cond_b

    .line 26718
    invoke-static {v1, v4, v10, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 26719
    :try_start_2
    iget-object v0, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    sget-object v4, Lads_mobile_sdk/em2;->a:Lads_mobile_sdk/em2;

    iput-object v1, v2, Lads_mobile_sdk/dm2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/dm2;->b:Lads_mobile_sdk/rr3;

    iput v8, v2, Lads_mobile_sdk/dm2;->e:I

    invoke-virtual {v0, v4, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v2, v1

    move-object v3, v2

    .line 26746
    :goto_1
    :try_start_3
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 26748
    :goto_2
    :try_start_4
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, v0, v9, v9, v6}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v1

    .line 27358
    :goto_3
    nop

    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_5

    .line 27359
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    .line 27360
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 27361
    :cond_5
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :goto_4
    move-object v1, v2

    .line 27369
    :goto_5
    :try_start_5
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 27373
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_a

    .line 27375
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 27381
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 27387
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    .line 27388
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    .line 27389
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_7

    throw v0

    .line 27390
    :cond_7
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27391
    :cond_8
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 27392
    :cond_9
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 27393
    :cond_a
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 27394
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 27428
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 27429
    :try_start_7
    iget-object v0, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    sget-object v4, Lads_mobile_sdk/em2;->a:Lads_mobile_sdk/em2;

    iput-object v1, v2, Lads_mobile_sdk/dm2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/dm2;->b:Lads_mobile_sdk/rr3;

    iput v7, v2, Lads_mobile_sdk/dm2;->e:I

    invoke-virtual {v0, v4, v2}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v0, v3, :cond_c

    :goto_6
    return-object v3

    :cond_c
    move-object v2, v1

    move-object v3, v2

    .line 27456
    :goto_7
    :try_start_8
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v3, v1

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 27458
    :goto_8
    :try_start_9
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, v0, v9, v9, v6}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v1

    .line 28105
    :goto_9
    nop

    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_d

    .line 28106
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    .line 28107
    invoke-static {v1, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 28108
    :cond_d
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_a
    return-object v0

    :goto_b
    move-object v1, v2

    .line 28116
    :goto_c
    :try_start_a
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 28120
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_12

    .line 28122
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    .line 28128
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 28134
    :cond_e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_11

    .line 28135
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_10

    .line 28136
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_f

    throw v0

    .line 28137
    :cond_f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 28138
    :cond_10
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 28139
    :cond_11
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 28140
    :cond_12
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 28141
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4710
    instance-of v3, v2, Lads_mobile_sdk/bm2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/bm2;

    iget v4, v3, Lads_mobile_sdk/bm2;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/bm2;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/bm2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/bm2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/bm2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 5053
    iget v5, v3, Lads_mobile_sdk/bm2;->g:I

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v11, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v0, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5054
    :cond_2
    iget-object v1, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/om2;

    iget-object v9, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/im2;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto/16 :goto_13

    :catch_1
    move-exception v0

    goto/16 :goto_f

    .line 5055
    :cond_3
    iget-object v0, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 5056
    :cond_4
    iget-object v1, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/om2;

    iget-object v8, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/im2;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v5

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_5

    .line 5057
    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5058
    iget-object v2, v0, Lads_mobile_sdk/im2;->g:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->N1:Lads_mobile_sdk/s11;

    .line 5813
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 5814
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 5815
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 5816
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    .line 5817
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 5818
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 5819
    invoke-direct {v14, v15, v8, v9, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 5820
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 5821
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v6, :cond_e

    .line 5822
    invoke-static {v2, v5, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 5823
    :try_start_4
    iget-object v5, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v6, Lads_mobile_sdk/cm2;

    invoke-direct {v6, v0, v1}, Lads_mobile_sdk/cm2;-><init>(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;)V

    iput-object v0, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    iput v11, v3, Lads_mobile_sdk/bm2;->g:I

    invoke-virtual {v5, v6, v3}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-ne v5, v4, :cond_6

    goto/16 :goto_b

    :cond_6
    move-object v5, v2

    .line 5824
    :goto_1
    :try_start_5
    iget-object v1, v1, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 5825
    iput-object v5, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    iput v10, v3, Lads_mobile_sdk/bm2;->g:I

    .line 5826
    iget-object v6, v0, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    .line 5827
    invoke-interface {v6}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/zj2;

    check-cast v6, Lads_mobile_sdk/ek2;

    invoke-virtual {v6, v1}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 5828
    sget-object v6, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v8, Lads_mobile_sdk/rl2;

    invoke-direct {v8, v0, v1, v12}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v0, v4, :cond_7

    goto/16 :goto_b

    :cond_7
    move-object v1, v2

    move-object v3, v5

    move-object v2, v0

    .line 5829
    :goto_2
    :try_start_6
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :goto_3
    move-object v1, v2

    move-object v2, v5

    goto :goto_9

    :goto_4
    move-object v1, v2

    :goto_5
    move-object v3, v5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    .line 5831
    :goto_6
    :try_start_7
    new-instance v2, Lads_mobile_sdk/j01;

    invoke-direct {v2, v0, v12, v12, v7}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 6585
    :goto_7
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_8

    .line 6586
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 6587
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6588
    :cond_8
    invoke-static {v1, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :goto_8
    move-object v2, v3

    .line 6596
    :goto_9
    :try_start_8
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 6600
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_d

    .line 6602
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_9

    .line 6608
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 6614
    :cond_9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    .line 6615
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 6616
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_a

    throw v0

    .line 6617
    :cond_a
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 6618
    :cond_b
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 6619
    :cond_c
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 6620
    :cond_d
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 6621
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 6655
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 6656
    :try_start_a
    iget-object v5, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v6, Lads_mobile_sdk/cm2;

    invoke-direct {v6, v0, v1}, Lads_mobile_sdk/cm2;-><init>(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;)V

    iput-object v0, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    const/4 v8, 0x3

    iput v8, v3, Lads_mobile_sdk/bm2;->g:I

    invoke-virtual {v5, v6, v3}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-ne v5, v4, :cond_f

    goto :goto_b

    :cond_f
    move-object v5, v2

    .line 6657
    :goto_a
    :try_start_b
    iget-object v1, v1, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 6658
    iput-object v5, v3, Lads_mobile_sdk/bm2;->a:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/bm2;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/bm2;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v3, Lads_mobile_sdk/bm2;->d:Lads_mobile_sdk/rr3;

    const/4 v6, 0x4

    iput v6, v3, Lads_mobile_sdk/bm2;->g:I

    .line 6659
    iget-object v6, v0, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    .line 6660
    invoke-interface {v6}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/zj2;

    check-cast v6, Lads_mobile_sdk/ek2;

    invoke-virtual {v6, v1}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 6661
    sget-object v6, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v8, Lads_mobile_sdk/rl2;

    invoke-direct {v8, v0, v1, v12}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-ne v0, v4, :cond_10

    :goto_b
    return-object v4

    :cond_10
    move-object v1, v2

    move-object v3, v5

    move-object v2, v0

    .line 6662
    :goto_c
    :try_start_c
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_11

    :catchall_8
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :goto_d
    move-object v1, v2

    move-object v2, v5

    goto :goto_14

    :goto_e
    move-object v1, v2

    :goto_f
    move-object v3, v5

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object v1, v2

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    .line 6664
    :goto_10
    :try_start_d
    new-instance v2, Lads_mobile_sdk/j01;

    invoke-direct {v2, v0, v12, v12, v7}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 7455
    :goto_11
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_11

    .line 7456
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 7457
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 7458
    :cond_11
    invoke-static {v1, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_12
    return-object v2

    :goto_13
    move-object v2, v3

    .line 7466
    :goto_14
    :try_start_e
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7470
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_16

    .line 7472
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_12

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_12

    .line 7478
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7484
    :cond_12
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    .line 7485
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 7486
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_13

    throw v0

    .line 7487
    :cond_13
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 7488
    :cond_14
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 7489
    :cond_15
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 7490
    :cond_16
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 7491
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7492
    instance-of v2, v1, Lads_mobile_sdk/hm2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/hm2;

    iget v3, v2, Lads_mobile_sdk/hm2;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/hm2;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/hm2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/hm2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/hm2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 8295
    iget v4, v2, Lads_mobile_sdk/hm2;->k:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v2, Lads_mobile_sdk/hm2;->g:I

    iget-wide v6, v2, Lads_mobile_sdk/hm2;->h:J

    iget v4, v2, Lads_mobile_sdk/hm2;->f:I

    iget-object v8, v2, Lads_mobile_sdk/hm2;->e:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/hm2;->d:Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/hm2;->c:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/hm2;->b:Lads_mobile_sdk/up0;

    iget-object v13, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8296
    iget-object v1, v0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    .line 8297
    iget-object v1, v1, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    .line 8298
    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/DataStore;

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 8299
    iput-object v0, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    iput v8, v2, Lads_mobile_sdk/hm2;->k:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_7

    .line 8300
    :cond_6
    :goto_1
    check-cast v1, Lads_mobile_sdk/o1;

    .line 8303
    invoke-static {}, Lads_mobile_sdk/o1;->x()Lads_mobile_sdk/o1;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_7

    iget-object v4, v0, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    invoke-virtual {v4}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v8, v10

    :goto_2
    if-eqz v8, :cond_8

    .line 8305
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 8306
    :cond_8
    iget-object v4, v0, Lads_mobile_sdk/im2;->f:Lads_mobile_sdk/xw0;

    .line 8307
    check-cast v4, Lads_mobile_sdk/hr;

    .line 8308
    iget-object v4, v4, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8309
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/k30;

    invoke-virtual {v4}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object v4

    .line 8310
    sget-object v11, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 8311
    sget-object v1, Lads_mobile_sdk/jk2;->b:Lads_mobile_sdk/jk2;

    iput-object v9, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    iput v7, v2, Lads_mobile_sdk/hm2;->k:I

    .line 8312
    invoke-static {v0, v1, v10, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_7

    .line 8313
    :cond_9
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 8314
    :cond_a
    iget-object v4, v0, Lads_mobile_sdk/im2;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 8315
    iget-object v4, v0, Lads_mobile_sdk/im2;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v12, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 8317
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v7, v10, :cond_b

    .line 8318
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    goto :goto_4

    .line 8320
    :cond_b
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v10, v4

    :goto_4
    move-wide v13, v10

    .line 8322
    new-instance v11, Lads_mobile_sdk/up0;

    .line 8323
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8325
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MODEL"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v16, v7

    .line 8326
    invoke-direct/range {v11 .. v16}, Lads_mobile_sdk/up0;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    .line 8327
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->z()Ljava/lang/String;

    move-result-object v4

    .line 8328
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->B()J

    move-result-wide v12

    .line 8329
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->y()Ljava/lang/String;

    move-result-object v10

    .line 8330
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->v()I

    move-result v7

    .line 8331
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->w()Ljava/lang/String;

    move-result-object v1

    .line 8333
    iput-object v0, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    iput-object v11, v2, Lads_mobile_sdk/hm2;->b:Lads_mobile_sdk/up0;

    iput-object v4, v2, Lads_mobile_sdk/hm2;->c:Ljava/lang/String;

    iput-object v10, v2, Lads_mobile_sdk/hm2;->d:Ljava/lang/String;

    iput-object v1, v2, Lads_mobile_sdk/hm2;->e:Ljava/lang/String;

    iput v8, v2, Lads_mobile_sdk/hm2;->f:I

    iput-wide v12, v2, Lads_mobile_sdk/hm2;->h:J

    iput v7, v2, Lads_mobile_sdk/hm2;->g:I

    iput v6, v2, Lads_mobile_sdk/hm2;->k:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/im2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    move-wide/from16 v17, v12

    move-object v13, v0

    move v0, v7

    move-object v12, v11

    move-object v11, v4

    move v4, v8

    move-object v8, v1

    move-object v1, v6

    move-wide/from16 v6, v17

    .line 8334
    :goto_5
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "key"

    const-string v14, "gads:pc:enable_consent_hash_validation"

    if-nez v1, :cond_d

    .line 8336
    iget-object v15, v13, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8338
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8354
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v15, v14, v5, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8355
    :cond_d
    iget-object v5, v12, Lads_mobile_sdk/up0;->a:Ljava/lang/String;

    .line 8356
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 8357
    sget-object v0, Lads_mobile_sdk/jk2;->e:Lads_mobile_sdk/jk2;

    move/from16 p0, v4

    goto :goto_6

    :cond_e
    move/from16 p0, v4

    .line 8358
    iget-wide v4, v12, Lads_mobile_sdk/up0;->b:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_f

    .line 8359
    sget-object v0, Lads_mobile_sdk/jk2;->f:Lads_mobile_sdk/jk2;

    goto :goto_6

    .line 8360
    :cond_f
    iget-object v4, v12, Lads_mobile_sdk/up0;->c:Ljava/lang/String;

    .line 8361
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 8362
    sget-object v0, Lads_mobile_sdk/jk2;->g:Lads_mobile_sdk/jk2;

    goto :goto_6

    .line 8363
    :cond_10
    iget v4, v12, Lads_mobile_sdk/up0;->d:I

    if-eq v0, v4, :cond_11

    .line 8364
    sget-object v0, Lads_mobile_sdk/jk2;->h:Lads_mobile_sdk/jk2;

    goto :goto_6

    .line 8365
    :cond_11
    iget-object v0, v13, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8367
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8383
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v14, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v1, :cond_12

    .line 8384
    sget-object v0, Lads_mobile_sdk/jk2;->d:Lads_mobile_sdk/jk2;

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_14

    if-nez p0, :cond_14

    const/4 v1, 0x0

    .line 8390
    iput-object v1, v2, Lads_mobile_sdk/hm2;->a:Lads_mobile_sdk/im2;

    iput-object v1, v2, Lads_mobile_sdk/hm2;->b:Lads_mobile_sdk/up0;

    iput-object v1, v2, Lads_mobile_sdk/hm2;->c:Ljava/lang/String;

    iput-object v1, v2, Lads_mobile_sdk/hm2;->d:Ljava/lang/String;

    iput-object v1, v2, Lads_mobile_sdk/hm2;->e:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, v2, Lads_mobile_sdk/hm2;->k:I

    invoke-static {v13, v0, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_13

    :goto_7
    return-object v3

    .line 8393
    :cond_13
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 8394
    :cond_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/j53;)I
    .locals 4

    .line 8646
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9361
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    .line 9392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 9389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9361
    const-string v3, "key"

    packed-switch p1, :pswitch_data_0

    return v1

    .line 9369
    :pswitch_0
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9370
    const-string v0, "gads:pc:max_swipeable_interstitial_ads"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9371
    sget-object v1, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9372
    :pswitch_1
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9373
    const-string v0, "gads:pc:max_rewarded_interstitial_ads"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9374
    sget-object v1, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9375
    :pswitch_2
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9376
    const-string v0, "gads:pc:max_rewarded_ads"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9377
    sget-object v1, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9378
    :pswitch_3
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9379
    const-string v1, "gads:pc:max_native_ads"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9380
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9381
    :pswitch_4
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9382
    const-string v0, "gads:pc:max_interstitial_ads"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9383
    sget-object v1, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9384
    :pswitch_5
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9385
    const-string v1, "gads:pc:max_icon_ads"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9386
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9387
    :pswitch_6
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9388
    const-string v0, "gads:pc:max_banner_ads"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9389
    sget-object v1, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 9390
    :pswitch_7
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9391
    const-string v1, "gads:pc:max_app_open_ads"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9392
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;
    .locals 3

    .line 5868
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/m21;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 6018
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/im2;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6019
    sget-object p1, Lads_mobile_sdk/ik2;->d:Lads_mobile_sdk/ik2;

    return-object p1

    .line 6020
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/im2;->f:Lads_mobile_sdk/xw0;

    check-cast p1, Lads_mobile_sdk/hr;

    .line 6021
    iget-object p1, p1, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6022
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/k30;

    invoke-virtual {p1}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    .line 6023
    sget-object v0, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6024
    sget-object p1, Lads_mobile_sdk/ik2;->c:Lads_mobile_sdk/ik2;

    return-object p1

    .line 6028
    :cond_2
    invoke-virtual {p0, p2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;)I

    move-result p1

    if-lez p1, :cond_3

    .line 6029
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6030
    const-string p2, "gads:pc:max_total_cached_ads"

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 6031
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, p2, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    .line 6032
    iget-object p1, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6033
    const-string p2, "gads:pc:cache_fill_count_per_request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 6034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 6035
    :cond_3
    sget-object p1, Lads_mobile_sdk/ik2;->b:Lads_mobile_sdk/ik2;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/vk2;)Ljava/lang/Object;
    .locals 0

    .line 17053
    invoke-static {p0, p1, p2, p3, p4}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 9393
    instance-of v0, p3, Lads_mobile_sdk/tl2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/tl2;

    iget v1, v0, Lads_mobile_sdk/tl2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tl2;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/tl2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/tl2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/tl2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9752
    iget v2, v0, Lads_mobile_sdk/tl2;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lads_mobile_sdk/tl2;->c:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/tl2;->b:Lads_mobile_sdk/j53;

    iget-object v0, v0, Lads_mobile_sdk/tl2;->a:Lads_mobile_sdk/im2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9753
    iget-object p3, p0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    .line 9754
    iget-object p3, p3, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    .line 9755
    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/datastore/core/DataStore;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    .line 9756
    iput-object p0, v0, Lads_mobile_sdk/tl2;->a:Lads_mobile_sdk/im2;

    iput-object p1, v0, Lads_mobile_sdk/tl2;->b:Lads_mobile_sdk/j53;

    iput-object p2, v0, Lads_mobile_sdk/tl2;->c:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/tl2;->f:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 9757
    :goto_1
    check-cast p3, Lads_mobile_sdk/o1;

    .line 9759
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 9760
    invoke-virtual {p3}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rx0;

    const/4 p3, 0x0

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9761
    :cond_4
    invoke-virtual {p1}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/j9;

    if-nez p1, :cond_5

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9762
    :cond_5
    iget-object p2, v0, Lads_mobile_sdk/im2;->d:Lads_mobile_sdk/tx;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9764
    invoke-virtual {v0, p1, v1, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j9;J)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9765
    iget-object p2, v0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p2}, Lads_mobile_sdk/cl2;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 10573
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    .line 10575
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/d9;

    .line 10576
    invoke-virtual {p2}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/b9;->c:Lads_mobile_sdk/b9;

    if-eq v0, v1, :cond_8

    invoke-virtual {p2}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object p2

    sget-object v0, Lads_mobile_sdk/b9;->d:Lads_mobile_sdk/b9;

    if-ne p2, v0, :cond_7

    :cond_8
    add-int/lit8 p3, p3, 0x1

    if-gez p3, :cond_7

    .line 11384
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_2

    .line 11386
    :cond_9
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    .line 11388
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/d9;

    .line 11389
    invoke-virtual {p2}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object p2

    sget-object v0, Lads_mobile_sdk/b9;->c:Lads_mobile_sdk/b9;

    if-ne p2, v0, :cond_b

    add-int/lit8 p3, p3, 0x1

    if-gez p3, :cond_b

    .line 12198
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_3

    .line 12199
    :cond_c
    :goto_4
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/j53;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p4

    .line 1
    instance-of v1, v0, Lads_mobile_sdk/ll2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/ll2;

    iget v2, v1, Lads_mobile_sdk/ll2;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/ll2;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/ll2;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/ll2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v1

    iget-object v0, v10, Lads_mobile_sdk/ll2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 599
    iget v1, v10, Lads_mobile_sdk/ll2;->g:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v13, :cond_2

    if-ne v1, v12, :cond_1

    iget-object v1, v10, Lads_mobile_sdk/ll2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, v10, Lads_mobile_sdk/ll2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v10, Lads_mobile_sdk/ll2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v10, Lads_mobile_sdk/ll2;->a:Lads_mobile_sdk/im2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v10, Lads_mobile_sdk/ll2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v10, Lads_mobile_sdk/ll2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v10, Lads_mobile_sdk/ll2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v10, Lads_mobile_sdk/ll2;->a:Lads_mobile_sdk/im2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 604
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 605
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 606
    iget-object v0, p0, Lads_mobile_sdk/im2;->d:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    iget-object v14, p0, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v0, Lads_mobile_sdk/nl2;

    move-object v6, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lads_mobile_sdk/nl2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/im2;JZ)V

    iput-object p0, v10, Lads_mobile_sdk/ll2;->a:Lads_mobile_sdk/im2;

    iput-object v2, v10, Lads_mobile_sdk/ll2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v3, v10, Lads_mobile_sdk/ll2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v10, Lads_mobile_sdk/ll2;->d:Ljava/lang/Object;

    iput v13, v10, Lads_mobile_sdk/ll2;->g:I

    invoke-virtual {v14, v0, v10}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, p0

    .line 700
    :goto_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    iput-object v4, v10, Lads_mobile_sdk/ll2;->a:Lads_mobile_sdk/im2;

    iput-object v3, v10, Lads_mobile_sdk/ll2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, v10, Lads_mobile_sdk/ll2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v10, Lads_mobile_sdk/ll2;->d:Ljava/lang/Object;

    iput v12, v10, Lads_mobile_sdk/ll2;->g:I

    .line 702
    iget-object v5, v4, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    .line 703
    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zj2;

    check-cast v5, Lads_mobile_sdk/ek2;

    invoke-virtual {v5, v0}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 704
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v7, Lads_mobile_sdk/rl2;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v0, v8}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v7, v10}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_5

    :goto_3
    return-object v11

    .line 705
    :cond_5
    :goto_4
    check-cast v0, Lads_mobile_sdk/v01;

    goto :goto_2

    .line 708
    :cond_6
    new-instance v0, Lkotlin/Pair;

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/om2;Lads_mobile_sdk/vk2;)Ljava/lang/Object;
    .locals 0

    .line 19719
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/up0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 28142
    instance-of v0, p2, Lads_mobile_sdk/fm2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/fm2;

    iget v1, v0, Lads_mobile_sdk/fm2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fm2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/fm2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/fm2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/fm2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29018
    iget v2, v0, Lads_mobile_sdk/fm2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/fm2;->b:Lads_mobile_sdk/up0;

    iget-object v2, v0, Lads_mobile_sdk/fm2;->a:Lads_mobile_sdk/im2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29019
    iput-object p0, v0, Lads_mobile_sdk/fm2;->a:Lads_mobile_sdk/im2;

    iput-object p1, v0, Lads_mobile_sdk/fm2;->b:Lads_mobile_sdk/up0;

    iput v4, v0, Lads_mobile_sdk/fm2;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/im2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 29020
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 29022
    iget-object v2, v2, Lads_mobile_sdk/im2;->a:Lads_mobile_sdk/r1;

    new-instance v4, Lads_mobile_sdk/gm2;

    invoke-direct {v4, p1, p2}, Lads_mobile_sdk/gm2;-><init>(Lads_mobile_sdk/up0;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lads_mobile_sdk/fm2;->a:Lads_mobile_sdk/im2;

    iput-object p1, v0, Lads_mobile_sdk/fm2;->b:Lads_mobile_sdk/up0;

    iput v3, v0, Lads_mobile_sdk/fm2;->e:I

    invoke-virtual {v2, v4, v0}, Lads_mobile_sdk/r1;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 29031
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 6036
    instance-of v0, p1, Lads_mobile_sdk/sl2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sl2;

    iget v1, v0, Lads_mobile_sdk/sl2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sl2;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/sl2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sl2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/sl2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6997
    iget v2, v0, Lads_mobile_sdk/sl2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lads_mobile_sdk/sl2;->a:Lads_mobile_sdk/im2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/sl2;->a:Lads_mobile_sdk/im2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6998
    iget-object p1, p0, Lads_mobile_sdk/im2;->h:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/n30;

    check-cast p1, Lads_mobile_sdk/g30;

    .line 6999
    iget-object p1, p1, Lads_mobile_sdk/g30;->C:Lkotlinx/coroutines/CompletableJob;

    .line 7000
    iput-object p0, v0, Lads_mobile_sdk/sl2;->a:Lads_mobile_sdk/im2;

    iput v4, v0, Lads_mobile_sdk/sl2;->d:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 7001
    :goto_1
    iget-object p1, v2, Lads_mobile_sdk/im2;->h:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/n30;

    iput-object v2, v0, Lads_mobile_sdk/sl2;->a:Lads_mobile_sdk/im2;

    iput v3, v0, Lads_mobile_sdk/sl2;->d:I

    check-cast p1, Lads_mobile_sdk/g30;

    .line 7002
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7003
    invoke-static {p1, v0}, Lads_mobile_sdk/g30;->e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, v2

    .line 7004
    :goto_3
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 7007
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7008
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7985
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "entrySet(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8642
    new-instance v0, Lads_mobile_sdk/il2;

    invoke-direct {v0}, Lads_mobile_sdk/il2;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 8643
    sget-object v7, Lads_mobile_sdk/kl2;->a:Lads_mobile_sdk/kl2;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8644
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 8645
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v8, Lads_mobile_sdk/jl2;->a:Lads_mobile_sdk/jl2;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Map;JLjava/util/List;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 19721
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19722
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/j9;

    .line 19724
    invoke-virtual {p0, v1, p2, p3}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j9;J)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 19725
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 19728
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/d9;

    .line 19730
    sget-object v6, Lads_mobile_sdk/s11;->Q1:Lads_mobile_sdk/s11;

    .line 20479
    sget-object v7, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 20480
    :try_start_0
    invoke-virtual {v5}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getFilename(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 21235
    instance-of v7, v5, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_1

    .line 21236
    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v7, 0x0

    .line 21237
    invoke-static {v5, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v5, 0x0

    .line 21238
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21246
    :try_start_1
    invoke-virtual {v6, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 21250
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_6

    .line 21252
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_2

    .line 21258
    invoke-virtual {v6, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 21264
    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_5

    .line 21265
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_4

    .line 21266
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_3

    throw p1

    .line 21267
    :cond_3
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 21268
    :cond_4
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 21269
    :cond_5
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 21270
    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 21271
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {v6, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 21272
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 22054
    invoke-virtual {v1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v1

    const-string v3, "toBuilder(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/i9;

    .line 22055
    const-string v3, "builder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22056
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 22057
    invoke-virtual {v1}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v5

    const-string v6, "getResponsesList(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22058
    invoke-direct {v3, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22059
    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22164
    invoke-virtual {v1}, Lads_mobile_sdk/i9;->h()V

    .line 22165
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 22166
    invoke-virtual {v1}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22167
    invoke-direct {v3, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22168
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "values"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22245
    invoke-virtual {v1, v4}, Lads_mobile_sdk/i9;->a(Ljava/util/List;)V

    .line 22246
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/j9;

    .line 22247
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/j9;J)Lkotlin/Pair;
    .locals 8

    .line 15738
    iget-object v0, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15739
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 15740
    const-string v2, "key"

    const/16 v3, 0x18

    const-string v4, "gads:pc:ad_ttl_ms"

    invoke-static {v3, v1, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 15741
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    .line 15742
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p2

    .line 15743
    invoke-virtual {p1}, Lads_mobile_sdk/j9;->y()Ljava/util/List;

    move-result-object p1

    const-string v2, "getResponsesList(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16390
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16392
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/d9;

    .line 16393
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v5}, Lads_mobile_sdk/d9;->w()J

    move-result-wide v5

    sget-object v7, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v7}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    invoke-static {p2, p3, v5, v6}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-gtz v5, :cond_0

    .line 17043
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17045
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17048
    :cond_1
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 5641
    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5642
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {p1}, Lads_mobile_sdk/m21;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 5643
    :goto_0
    const-string v0, "webProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5722
    iget-object v1, p0, Lads_mobile_sdk/im2;->l:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5723
    iget-object v1, p0, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/zj2;

    check-cast v1, Lads_mobile_sdk/ek2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5724
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5858
    iget-object v0, v1, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5859
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5860
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    .line 5861
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ko;

    .line 5862
    iget-object v2, v2, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    .line 5863
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5864
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ko;

    .line 5865
    iget-object v1, v1, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5866
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5867
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1984
    instance-of v2, v0, Lads_mobile_sdk/vl2;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/vl2;

    iget v3, v2, Lads_mobile_sdk/vl2;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/vl2;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/vl2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/vl2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/vl2;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2257
    iget v4, v2, Lads_mobile_sdk/vl2;->n:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "getFilename(...)"

    const/4 v10, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 2258
    :cond_2
    iget-wide v12, v2, Lads_mobile_sdk/vl2;->k:J

    iget v4, v2, Lads_mobile_sdk/vl2;->j:I

    iget v14, v2, Lads_mobile_sdk/vl2;->i:I

    iget-object v15, v2, Lads_mobile_sdk/vl2;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v2, Lads_mobile_sdk/vl2;->g:Lads_mobile_sdk/om2;

    iget-object v9, v2, Lads_mobile_sdk/vl2;->f:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/d9;

    iget-object v6, v2, Lads_mobile_sdk/vl2;->e:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/vl2;->d:Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    check-cast v11, Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/j53;

    move-object/from16 v17, v0

    iget-object v0, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/im2;

    :try_start_1
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v10

    move-object v10, v0

    const/4 v0, 0x3

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :cond_3
    move-object/from16 v17, v0

    .line 2259
    iget v0, v2, Lads_mobile_sdk/vl2;->i:I

    iget-object v4, v2, Lads_mobile_sdk/vl2;->f:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/mm2;

    iget-object v5, v2, Lads_mobile_sdk/vl2;->e:Ljava/io/Closeable;

    iget-object v6, v2, Lads_mobile_sdk/vl2;->d:Lads_mobile_sdk/rr3;

    iget-object v7, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/j53;

    iget-object v10, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/im2;

    :try_start_2
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v14, v0

    move-object v11, v7

    move-object/from16 v0, v17

    const/4 v13, 0x2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    const/4 v9, 0x1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_14

    :cond_4
    move-object/from16 v17, v0

    .line 2260
    iget-object v0, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/j53;

    iget-object v5, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/im2;

    :try_start_3
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v0, v22

    goto :goto_1

    :cond_5
    move-object/from16 v17, v0

    .line 2261
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2263
    :try_start_4
    iput-object v1, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    const/4 v5, 0x1

    iput v5, v2, Lads_mobile_sdk/vl2;->n:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/im2;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_6

    goto/16 :goto_10

    :cond_6
    move-object v5, v1

    .line 2264
    :goto_1
    sget-object v6, Lads_mobile_sdk/s11;->H1:Lads_mobile_sdk/s11;

    .line 3047
    sget-object v7, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v6, v7, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3048
    :try_start_5
    iget-object v7, v5, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v7}, Lads_mobile_sdk/cl2;->a()Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    xor-int/2addr v7, v9

    move-object v10, v5

    move-object v5, v6

    const/4 v11, 0x0

    :goto_2
    if-eqz v7, :cond_7

    move v12, v9

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    .line 3053
    :goto_3
    :try_start_6
    iput-object v10, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    iput-object v5, v2, Lads_mobile_sdk/vl2;->d:Lads_mobile_sdk/rr3;

    iput-object v6, v2, Lads_mobile_sdk/vl2;->e:Ljava/io/Closeable;

    iput-object v11, v2, Lads_mobile_sdk/vl2;->f:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v2, Lads_mobile_sdk/vl2;->g:Lads_mobile_sdk/om2;

    iput-object v13, v2, Lads_mobile_sdk/vl2;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v7, v2, Lads_mobile_sdk/vl2;->i:I

    const/4 v13, 0x2

    iput v13, v2, Lads_mobile_sdk/vl2;->n:I

    invoke-virtual {v10, v0, v4, v12, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v12, v3, :cond_8

    goto/16 :goto_10

    :cond_8
    move-object v14, v11

    move-object v11, v4

    move-object v4, v14

    move v14, v7

    move-object v7, v5

    move-object v5, v0

    move-object v0, v12

    .line 3054
    :goto_4
    :try_start_7
    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lads_mobile_sdk/d9;

    .line 3055
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/mm2;

    if-nez v12, :cond_b

    if-nez v4, :cond_a

    if-nez v0, :cond_9

    .line 3059
    sget-object v4, Lads_mobile_sdk/mm2;->b:Lads_mobile_sdk/mm2;

    goto :goto_5

    :cond_9
    move-object v4, v0

    .line 3104
    :cond_a
    :goto_5
    new-instance v0, Lads_mobile_sdk/q01;

    .line 3105
    new-instance v2, Lads_mobile_sdk/eu;

    const/4 v13, 0x0

    invoke-direct {v2, v13, v4}, Lads_mobile_sdk/eu;-><init>(Lads_mobile_sdk/ct1;Lads_mobile_sdk/mm2;)V

    .line 3106
    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    :goto_6
    move-object v4, v6

    move-object v2, v7

    goto/16 :goto_d

    .line 3107
    :cond_b
    new-instance v4, Lads_mobile_sdk/om2;

    invoke-virtual {v12}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0, v5, v11}, Lads_mobile_sdk/om2;-><init>(Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 3108
    iget-object v0, v10, Lads_mobile_sdk/im2;->d:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3110
    invoke-virtual {v12}, Lads_mobile_sdk/d9;->w()J

    move-result-wide v18

    sget-wide v20, Lads_mobile_sdk/xl;->a:J

    cmp-long v0, v18, v20

    if-gez v0, :cond_c

    move v0, v9

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 3111
    :goto_7
    invoke-virtual {v12}, Lads_mobile_sdk/d9;->w()J

    move-result-wide v18

    move/from16 p1, v14

    sub-long v13, v16, v18

    .line 3113
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3115
    :try_start_8
    iget-object v9, v10, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    invoke-virtual {v12}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v20, v4

    :try_start_9
    invoke-virtual {v12}, Lads_mobile_sdk/d9;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lads_mobile_sdk/e9;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/v01;

    move-result-object v1

    .line 3116
    instance-of v4, v1, Lads_mobile_sdk/q01;

    if-eqz v4, :cond_d

    check-cast v1, Lads_mobile_sdk/q01;

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    .line 3117
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 3118
    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    .line 3119
    :goto_9
    iput-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3121
    :try_start_a
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v16, Lads_mobile_sdk/wl2;

    if-eqz p1, :cond_f

    const/16 v17, 0x1

    goto :goto_a

    :cond_f
    const/16 v17, 0x0

    :goto_a
    const/16 v21, 0x0

    move-object/from16 v19, v10

    move-object/from16 v18, v15

    invoke-direct/range {v16 .. v21}, Lads_mobile_sdk/wl2;-><init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v9, v16

    move-object/from16 v4, v20

    iput-object v10, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    iput-object v7, v2, Lads_mobile_sdk/vl2;->d:Lads_mobile_sdk/rr3;

    iput-object v6, v2, Lads_mobile_sdk/vl2;->e:Ljava/io/Closeable;

    iput-object v12, v2, Lads_mobile_sdk/vl2;->f:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/vl2;->g:Lads_mobile_sdk/om2;

    iput-object v15, v2, Lads_mobile_sdk/vl2;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v20, v4

    move/from16 v4, p1

    iput v4, v2, Lads_mobile_sdk/vl2;->i:I

    iput v0, v2, Lads_mobile_sdk/vl2;->j:I

    iput-wide v13, v2, Lads_mobile_sdk/vl2;->k:J

    move/from16 v16, v0

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/vl2;->n:I

    invoke-static {v1, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    goto/16 :goto_10

    :cond_10
    move-object v9, v12

    move-wide v12, v13

    move v14, v4

    move-object v4, v11

    move-object/from16 v11, v20

    .line 3128
    :goto_b
    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 3129
    iget-object v0, v10, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Lads_mobile_sdk/cl2;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v10, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3130
    const-string v1, "gads:pc:enable_auto_refresh_on_claimed_ad"

    .line 3131
    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3147
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3148
    iget-object v0, v10, Lads_mobile_sdk/im2;->i:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zj2;

    invoke-virtual {v9}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ek2;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 3150
    :cond_11
    new-instance v0, Lads_mobile_sdk/q01;

    .line 3151
    new-instance v1, Lads_mobile_sdk/eu;

    .line 3153
    new-instance v9, Lads_mobile_sdk/ct1;

    .line 3154
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    move-wide v13, v12

    if-eqz v16, :cond_12

    const/4 v12, 0x1

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    .line 3155
    :goto_c
    invoke-direct/range {v9 .. v14}, Lads_mobile_sdk/ct1;-><init>(Ljava/lang/String;Lads_mobile_sdk/om2;ZJ)V

    const/4 v13, 0x0

    .line 3156
    invoke-direct {v1, v9, v13}, Lads_mobile_sdk/eu;-><init>(Lads_mobile_sdk/ct1;Lads_mobile_sdk/mm2;)V

    .line 3157
    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 3908
    :goto_d
    :try_start_b
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_13

    .line 3909
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v9, 0x0

    .line 3910
    invoke-static {v1, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_13
    const/4 v13, 0x0

    .line 3911
    :try_start_c
    invoke-static {v4, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-object v0

    :cond_14
    const/4 v9, 0x0

    .line 3912
    :try_start_d
    sget-object v11, Lads_mobile_sdk/mm2;->d:Lads_mobile_sdk/mm2;

    move-object/from16 v1, p0

    move-object v0, v5

    move-object v5, v7

    move v7, v14

    const/4 v9, 0x1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move/from16 v4, p1

    const/4 v9, 0x0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v20, v4

    const/4 v9, 0x0

    move/from16 v4, p1

    .line 3913
    :goto_e
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v16, Lads_mobile_sdk/wl2;

    if-eqz v4, :cond_15

    const/16 v17, 0x1

    goto :goto_f

    :cond_15
    move/from16 v17, v9

    :goto_f
    const/16 v21, 0x0

    move-object/from16 v19, v10

    move-object/from16 v18, v15

    invoke-direct/range {v16 .. v21}, Lads_mobile_sdk/wl2;-><init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v16

    iput-object v7, v2, Lads_mobile_sdk/vl2;->a:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/vl2;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/vl2;->c:Ljava/io/Serializable;

    const/4 v13, 0x0

    iput-object v13, v2, Lads_mobile_sdk/vl2;->d:Lads_mobile_sdk/rr3;

    iput-object v13, v2, Lads_mobile_sdk/vl2;->e:Ljava/io/Closeable;

    iput-object v13, v2, Lads_mobile_sdk/vl2;->f:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Lads_mobile_sdk/vl2;->n:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-ne v1, v3, :cond_16

    :goto_10
    return-object v3

    :cond_16
    move-object v3, v0

    move-object v4, v6

    move-object v2, v7

    .line 3920
    :goto_11
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_12
    move-object v7, v2

    move-object v6, v4

    goto :goto_14

    :goto_13
    move-object v7, v5

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v7, v6

    .line 4683
    :goto_14
    :try_start_f
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4687
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1b

    .line 4689
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_17

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_17

    .line 4695
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4701
    :cond_17
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a

    .line 4702
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19

    .line 4703
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_18

    throw v0

    .line 4704
    :cond_18
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4705
    :cond_19
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 4706
    :cond_1a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 4707
    :cond_1b
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 4708
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    :try_start_11
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    move-exception v0

    .line 4709
    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    const/4 v13, 0x0

    invoke-direct {v1, v0, v13, v13, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ul2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ul2;

    iget v1, v0, Lads_mobile_sdk/ul2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ul2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ul2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ul2;-><init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ul2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 200
    iget v2, v0, Lads_mobile_sdk/ul2;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto/16 :goto_7

    .line 202
    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    iget-boolean p1, p0, Lads_mobile_sdk/im2;->k:Z

    if-eqz p1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 204
    :cond_5
    iget-object v2, p0, Lads_mobile_sdk/im2;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 1016
    iput-object p0, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    iput-object v2, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/ul2;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, p0

    .line 1017
    :goto_1
    :try_start_2
    iget-boolean p1, v7, Lads_mobile_sdk/im2;->k:Z

    if-nez p1, :cond_a

    .line 1022
    iput-object v7, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    iput-object v2, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ul2;->e:I

    .line 1023
    invoke-static {v7, v0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v7

    .line 1024
    :goto_2
    :try_start_3
    iput-object v4, v0, Lads_mobile_sdk/ul2;->a:Lads_mobile_sdk/im2;

    iput-object v2, v0, Lads_mobile_sdk/ul2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ul2;->e:I

    .line 1025
    iget-object p1, v4, Lads_mobile_sdk/im2;->e:Landroid/content/Context;

    .line 1026
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1027
    iget-object p1, v4, Lads_mobile_sdk/im2;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1029
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v12, v3, :cond_8

    .line 1030
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    goto :goto_3

    .line 1032
    :cond_8
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v9, p1

    .line 1034
    :goto_3
    new-instance v7, Lads_mobile_sdk/up0;

    .line 1035
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1037
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p1, "MODEL"

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-direct/range {v7 .. v12}, Lads_mobile_sdk/up0;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    .line 1039
    invoke-virtual {v4, v7, v0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/up0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    move-object v1, v2

    move-object v0, v4

    .line 1040
    :goto_5
    :try_start_4
    iput-boolean v5, v0, Lads_mobile_sdk/im2;->k:Z

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :cond_a
    move-object v1, v2

    .line 1041
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1846
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_7
    move-object v2, v1

    .line 1847
    :goto_8
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Z
    .locals 4

    .line 1848
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    iget-object v0, p0, Lads_mobile_sdk/im2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1960
    const-string v1, "key"

    const-string v2, "gads:pc:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1976
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1977
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    return v1

    .line 1978
    :cond_1
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    if-eqz p2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    :cond_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdPersistenceEnabled()Z

    move-result p1

    goto :goto_0

    .line 1980
    :cond_3
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    if-eqz p2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    :cond_4
    if-eqz v2, :cond_8

    .line 1981
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdPersistenceEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getExcludedAppIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 1983
    :cond_5
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz p2, :cond_6

    move-object v2, p1

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->getAdPersistenceEnabled()Z

    move-result p1

    :goto_0
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method
