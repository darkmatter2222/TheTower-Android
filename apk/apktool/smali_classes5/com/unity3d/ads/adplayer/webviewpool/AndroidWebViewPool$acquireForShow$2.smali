.class final Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidWebViewPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->acquireForShow$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$2"
    f = "AndroidWebViewPool.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x3e,
        0x3f
    }
    m = "invokeSuspend"
    n = {
        "queue",
        "entry",
        "queue"
    }
    s = {
        "L$1",
        "L$2",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object v5, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    new-array p1, v3, [Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {v1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->access$getFreshViews$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {v1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->access$getRecycledViews$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    if-nez v5, :cond_3

    goto :goto_0

    .line 62
    :cond_3
    iget-object v6, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->label:I

    invoke-static {v6, v5, v7}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->access$isHealthy(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v1

    .line 63
    :cond_5
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->this$0:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;->label:I

    invoke-static {p1, v1, v7}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->access$destroyEntry(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_3
    return-object v0

    :cond_6
    move-object v1, v5

    move-object p1, v6

    goto :goto_1

    :cond_7
    return-object v2
.end method
