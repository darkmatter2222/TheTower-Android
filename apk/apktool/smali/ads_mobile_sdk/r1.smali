.class public final Lads_mobile_sdk/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .locals 1

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/p1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/p1;

    iget v1, v0, Lads_mobile_sdk/p1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/p1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/p1;-><init>(Lads_mobile_sdk/r1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/p1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lads_mobile_sdk/p1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/p1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/p1;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    sget-object p2, Lads_mobile_sdk/s11;->L1:Lads_mobile_sdk/s11;

    .line 61
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 62
    :try_start_1
    iget-object v2, p0, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    new-instance v5, Lads_mobile_sdk/q1;

    invoke-direct {v5, p1, v4}, Lads_mobile_sdk/q1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/p1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/p1;->b:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/p1;->e:I

    invoke-interface {v2, v5, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 63
    :goto_1
    :try_start_2
    check-cast p2, Lads_mobile_sdk/o1;

    .line 98
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_4

    .line 99
    check-cast p2, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 100
    invoke-static {p2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_4
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 140
    :goto_2
    :try_start_3
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 144
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_9

    .line 146
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    .line 152
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 158
    :cond_5
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_8

    .line 159
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_7

    .line 160
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_6

    throw p2

    .line 161
    :cond_6
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 162
    :cond_7
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 163
    :cond_8
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 164
    :cond_9
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    .line 165
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
