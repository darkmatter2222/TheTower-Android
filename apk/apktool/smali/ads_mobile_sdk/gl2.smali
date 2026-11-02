.class public final Lads_mobile_sdk/gl2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/r1;

.field public final d:Lads_mobile_sdk/e9;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/cl2;

.field public g:Lads_mobile_sdk/im2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r1;Lads_mobile_sdk/e9;Landroid/content/Context;Lads_mobile_sdk/xw0;Lads_mobile_sdk/cl2;)V
    .locals 1

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagValueProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "flags"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p4, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/gl2;->c:Lads_mobile_sdk/r1;

    .line 32
    iput-object p2, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    .line 33
    iput-object p3, p0, Lads_mobile_sdk/gl2;->e:Landroid/content/Context;

    .line 35
    iput-object p5, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/el2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/el2;

    iget v1, v0, Lads_mobile_sdk/el2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/el2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/el2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/el2;-><init>(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/el2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lads_mobile_sdk/el2;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/el2;->b:Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lads_mobile_sdk/el2;->a:Lads_mobile_sdk/gl2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v6

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 82
    iget-object v2, p0, Lads_mobile_sdk/gl2;->c:Lads_mobile_sdk/r1;

    .line 83
    iget-object v2, v2, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    .line 84
    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    invoke-interface {v2}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 85
    iput-object p0, v0, Lads_mobile_sdk/el2;->a:Lads_mobile_sdk/gl2;

    iput-object p1, v0, Lads_mobile_sdk/el2;->b:Ljava/util/LinkedHashSet;

    iput v3, v0, Lads_mobile_sdk/el2;->e:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 86
    :cond_3
    :goto_1
    check-cast v0, Lads_mobile_sdk/o1;

    .line 91
    invoke-virtual {v0}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/rx0;

    .line 92
    invoke-virtual {v1}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/j9;

    .line 93
    invoke-virtual {v2}, Lads_mobile_sdk/j9;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/d9;

    .line 94
    invoke-virtual {v3}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFilename(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_6
    iget-object p0, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    invoke-virtual {p0}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ".tmp"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 104
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 108
    :cond_9
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/fl2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fl2;

    iget v1, v0, Lads_mobile_sdk/fl2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fl2;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/fl2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fl2;-><init>(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/fl2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lads_mobile_sdk/fl2;->f:I

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v5, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/gl2;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    .line 40
    :cond_3
    iget-object p0, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/gl2;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, p0

    move-object p0, v6

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_c

    :catch_1
    move-exception p1

    goto/16 :goto_8

    .line 41
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string v2, "key"

    const-string v8, "gads:pc:enabled"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v8, v2, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 61
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 65
    :cond_5
    :try_start_3
    iget-object p1, p0, Lads_mobile_sdk/gl2;->e:Landroid/content/Context;

    const-string v2, "google_mobile_ads_ad_cache_manifest.pb"

    invoke-static {p1, v2}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 66
    iget-object v2, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    .line 67
    iget-boolean v8, v2, Lads_mobile_sdk/e9;->b:Z

    if-eqz v8, :cond_6

    move v2, v6

    goto :goto_1

    .line 68
    :cond_6
    iget-object v8, v2, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    iput-boolean v8, v2, Lads_mobile_sdk/e9;->b:Z

    .line 69
    iget-boolean v2, v2, Lads_mobile_sdk/e9;->b:Z

    :goto_1
    if-nez p1, :cond_7

    if-nez v2, :cond_7

    .line 70
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    return-object p0

    .line 76
    :cond_7
    sget-object p1, Lads_mobile_sdk/s11;->G1:Lads_mobile_sdk/s11;

    .line 127
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 128
    :try_start_4
    iget-object v2, p0, Lads_mobile_sdk/gl2;->g:Lads_mobile_sdk/im2;

    if-eqz v2, :cond_8

    iput-object p0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iput v6, v0, Lads_mobile_sdk/fl2;->f:I

    .line 129
    invoke-static {v2, v0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v2, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, p1

    .line 130
    :goto_2
    :try_start_5
    iget-object v6, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    invoke-virtual {v6}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 131
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 134
    :cond_9
    iget-object v6, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    invoke-virtual {v6}, Lads_mobile_sdk/cl2;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 135
    iget-object v6, p0, Lads_mobile_sdk/gl2;->g:Lads_mobile_sdk/im2;

    if-eqz v6, :cond_b

    iput-object p0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iput-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iput v5, v0, Lads_mobile_sdk/fl2;->f:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 136
    :try_start_8
    invoke-static {v6, v0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v5, v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v10, v5

    move-object v5, p0

    move-object p0, p1

    move-object p1, v10

    .line 137
    :goto_3
    :try_start_9
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object p1, p0

    move-object p0, v5

    .line 140
    :cond_b
    :try_start_a
    iput-object v2, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iput-object p1, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object v7, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iput v4, v0, Lads_mobile_sdk/fl2;->f:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {p0, v0}, Lads_mobile_sdk/gl2;->a(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-ne p0, v1, :cond_c

    :goto_4
    return-object v1

    :cond_c
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    .line 142
    :goto_5
    :try_start_e
    check-cast p1, Lads_mobile_sdk/v01;

    .line 173
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_d

    goto :goto_6

    .line 176
    :cond_d
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_6
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    goto :goto_b

    :goto_7
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_a

    :catchall_2
    move-exception p0

    move-object v0, p1

    goto :goto_d

    :catch_2
    move-exception p0

    goto :goto_9

    :catchall_3
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_c

    :catch_3
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_8
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    :goto_9
    move-object v0, v2

    goto :goto_a

    :catchall_4
    move-exception p0

    move-object v0, p1

    goto :goto_f

    :catch_4
    move-exception p0

    move-object v0, p1

    .line 178
    :goto_a
    :try_start_f
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p0, v7, v7, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object v2, v0

    move-object p0, v1

    .line 217
    :goto_b
    :try_start_10
    instance-of v0, p0, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_e

    .line 218
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/i01;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v1, 0x0

    .line 219
    :try_start_11
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 220
    :cond_e
    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :goto_c
    move-object v0, p0

    move-object p0, p1

    :goto_d
    move-object p1, v2

    goto :goto_f

    :catchall_5
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_e
    move-object v10, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v10

    .line 228
    :goto_f
    :try_start_12
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 232
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_13

    .line 234
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_f

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_f

    .line 240
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 246
    :cond_f
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_12

    .line 247
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_11

    .line 248
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_10

    throw p0

    .line 249
    :cond_10
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 250
    :cond_11
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 251
    :cond_12
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 252
    :cond_13
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception p0

    .line 253
    :try_start_13
    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 254
    new-instance p1, Lads_mobile_sdk/j01;

    invoke-direct {p1, p0, v7, v7, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/gl2;->b(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
