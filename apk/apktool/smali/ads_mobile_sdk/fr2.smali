.class public final Lads_mobile_sdk/fr2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/pt2;

.field public c:Lads_mobile_sdk/j53;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/pt2;

.field public final synthetic f:Lads_mobile_sdk/j53;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fr2;->e:Lads_mobile_sdk/pt2;

    iput-object p2, p0, Lads_mobile_sdk/fr2;->f:Lads_mobile_sdk/j53;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/fr2;

    iget-object v0, p0, Lads_mobile_sdk/fr2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/fr2;->f:Lads_mobile_sdk/j53;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/fr2;-><init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/fr2;

    iget-object v0, p0, Lads_mobile_sdk/fr2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/fr2;->f:Lads_mobile_sdk/j53;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/fr2;-><init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/fr2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 289
    iget v1, p0, Lads_mobile_sdk/fr2;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/fr2;->c:Lads_mobile_sdk/j53;

    iget-object v1, p0, Lads_mobile_sdk/fr2;->b:Lads_mobile_sdk/pt2;

    iget-object v2, p0, Lads_mobile_sdk/fr2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lads_mobile_sdk/fr2;->e:Lads_mobile_sdk/pt2;

    .line 291
    iget-object p1, v1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 292
    iget-object v4, p0, Lads_mobile_sdk/fr2;->f:Lads_mobile_sdk/j53;

    .line 1038
    iput-object p1, p0, Lads_mobile_sdk/fr2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/fr2;->b:Lads_mobile_sdk/pt2;

    iput-object v4, p0, Lads_mobile_sdk/fr2;->c:Lads_mobile_sdk/j53;

    iput v2, p0, Lads_mobile_sdk/fr2;->d:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v2, p1

    move-object v0, v4

    .line 1039
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1040
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    .line 1788
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1789
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1790
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1791
    check-cast v0, Ljava/util/Map$Entry;

    .line 1792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h6;

    .line 1793
    iget-object v0, v0, Lads_mobile_sdk/h6;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    .line 1794
    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2544
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2545
    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    :cond_4
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 3298
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
