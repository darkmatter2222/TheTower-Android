.class public final Lads_mobile_sdk/rl2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/im2;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rl2;->a:Lads_mobile_sdk/im2;

    iput-object p2, p0, Lads_mobile_sdk/rl2;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/rl2;

    iget-object v0, p0, Lads_mobile_sdk/rl2;->a:Lads_mobile_sdk/im2;

    iget-object v1, p0, Lads_mobile_sdk/rl2;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/rl2;

    iget-object v0, p0, Lads_mobile_sdk/rl2;->a:Lads_mobile_sdk/im2;

    iget-object v1, p0, Lads_mobile_sdk/rl2;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/rl2;-><init>(Lads_mobile_sdk/im2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/rl2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 536
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/rl2;->a:Lads_mobile_sdk/im2;

    .line 537
    iget-object p1, p1, Lads_mobile_sdk/im2;->b:Lads_mobile_sdk/e9;

    .line 538
    iget-object v0, p0, Lads_mobile_sdk/rl2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    const-string v1, "filename"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    sget-object v1, Lads_mobile_sdk/s11;->O1:Lads_mobile_sdk/s11;

    .line 814
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 815
    :try_start_0
    iget-boolean v2, p1, Lads_mobile_sdk/e9;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    iget-object v2, p1, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p1, Lads_mobile_sdk/e9;->b:Z

    .line 817
    iget-boolean v2, p1, Lads_mobile_sdk/e9;->b:Z

    if-nez v2, :cond_1

    .line 818
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "Cache directory not found"

    .line 819
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 820
    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_1

    .line 821
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lads_mobile_sdk/e9;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "Invalid filename"

    .line 822
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 823
    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_1

    .line 824
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 825
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "File not found"

    .line 826
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 827
    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_1

    .line 828
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 829
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 831
    :cond_4
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "Failed to delete file"

    .line 832
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 833
    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 834
    :goto_1
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_5

    .line 835
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 836
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/4 v0, 0x0

    .line 837
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 845
    :try_start_1
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 849
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_a

    .line 851
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    .line 857
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 863
    :cond_6
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    .line 864
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 865
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_7

    throw p1

    .line 866
    :cond_7
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 867
    :cond_8
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 868
    :cond_9
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 869
    :cond_a
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 870
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
