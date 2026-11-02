.class public final Lads_mobile_sdk/xb2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lkotlin/jvm/functions/Function2;

.field public c:Lads_mobile_sdk/ac2;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/ac2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iput-object p2, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/xb2;

    iget-object v0, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iget-object v1, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/xb2;

    iget-object v0, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iget-object v1, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "Error interacting with offline buffered ping database: "

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget v2, p0, Lads_mobile_sdk/xb2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iget-object v4, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    invoke-static {p1}, Lads_mobile_sdk/ac2;->a(Lads_mobile_sdk/ac2;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v2, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    .line 232
    iput-object p1, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iput-object v6, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iput v4, p0, Lads_mobile_sdk/xb2;->d:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    move-object v2, v6

    .line 233
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v6, "getWritableDatabase(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v5, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iput-object v5, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iput v3, p0, Lads_mobile_sdk/xb2;->d:I

    invoke-interface {v4, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v1, p1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    .line 235
    :goto_2
    :try_start_2
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;)V

    .line 237
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v0, p1

    move-object p1, v1

    .line 357
    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
