.class public final Lads_mobile_sdk/er2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/pt2;

.field public c:Lads_mobile_sdk/j53;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/pt2;

.field public final synthetic g:Lads_mobile_sdk/j53;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/er2;->f:Lads_mobile_sdk/pt2;

    iput-object p1, p0, Lads_mobile_sdk/er2;->g:Lads_mobile_sdk/j53;

    iput-object p3, p0, Lads_mobile_sdk/er2;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/er2;

    iget-object v0, p0, Lads_mobile_sdk/er2;->f:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/er2;->g:Lads_mobile_sdk/j53;

    iget-object v2, p0, Lads_mobile_sdk/er2;->h:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2, p2}, Lads_mobile_sdk/er2;-><init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/er2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/er2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/er2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 282
    iget v1, p0, Lads_mobile_sdk/er2;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/er2;->d:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/er2;->c:Lads_mobile_sdk/j53;

    iget-object v2, p0, Lads_mobile_sdk/er2;->b:Lads_mobile_sdk/pt2;

    iget-object v4, p0, Lads_mobile_sdk/er2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 283
    iget-object p1, p0, Lads_mobile_sdk/er2;->f:Lads_mobile_sdk/pt2;

    .line 284
    iget-object v4, p1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 285
    iget-object v1, p0, Lads_mobile_sdk/er2;->g:Lads_mobile_sdk/j53;

    iget-object v5, p0, Lads_mobile_sdk/er2;->h:Ljava/lang/String;

    .line 1038
    iput-object v4, p0, Lads_mobile_sdk/er2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/er2;->b:Lads_mobile_sdk/pt2;

    iput-object v1, p0, Lads_mobile_sdk/er2;->c:Lads_mobile_sdk/j53;

    iput-object v5, p0, Lads_mobile_sdk/er2;->d:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/er2;->e:I

    invoke-interface {v4, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v2, p1

    move-object v0, v5

    .line 1039
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1040
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h6;

    if-eqz p1, :cond_3

    .line 1041
    iget-object p1, p1, Lads_mobile_sdk/h6;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    move-object p1, v3

    .line 1042
    :goto_1
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1043
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
