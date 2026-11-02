.class public final Lads_mobile_sdk/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xd;


# instance fields
.field public final a:Lads_mobile_sdk/g33;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g33;)V
    .locals 1

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "refreshListener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lads_mobile_sdk/cp;->a:Lads_mobile_sdk/g33;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/cp;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/bp;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/bp;

    iget v1, v0, Lads_mobile_sdk/bp;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bp;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/bp;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/bp;-><init>(Lads_mobile_sdk/cp;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/bp;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lads_mobile_sdk/bp;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    iget-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    .line 23
    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 25
    :cond_3
    iget-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p0, Lads_mobile_sdk/cp;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 46
    iput-object p0, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    iput-object p2, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iput v5, v0, Lads_mobile_sdk/bp;->f:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, p0

    .line 47
    :goto_2
    :try_start_1
    iget-object v2, v5, Lads_mobile_sdk/cp;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 49
    iget-object v3, v5, Lads_mobile_sdk/cp;->a:Lads_mobile_sdk/g33;

    iput-object v5, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    iput-object p2, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iput v4, v0, Lads_mobile_sdk/bp;->f:I

    invoke-interface {v3, v2, v0}, Lads_mobile_sdk/g33;->c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 51
    :cond_6
    iget-object v4, v5, Lads_mobile_sdk/cp;->a:Lads_mobile_sdk/g33;

    iput-object v5, v0, Lads_mobile_sdk/bp;->a:Lads_mobile_sdk/cp;

    iput-object p2, v0, Lads_mobile_sdk/bp;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/bp;->c:Z

    iput v3, v0, Lads_mobile_sdk/bp;->f:I

    invoke-interface {v4, v2, v0}, Lads_mobile_sdk/g33;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v1, p2

    move-object v0, v5

    .line 54
    :goto_4
    :try_start_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/cp;->c:Ljava/lang/Boolean;

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v1, p2

    .line 69
    :goto_5
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
