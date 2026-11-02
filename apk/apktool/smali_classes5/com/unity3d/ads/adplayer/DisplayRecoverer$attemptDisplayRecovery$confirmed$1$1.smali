.class final Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DisplayRecoverer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/unity3d/ads/adplayer/DisplayMessage;",
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
        "Lcom/unity3d/ads/adplayer/DisplayMessage;",
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
    c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1"
    f = "DisplayRecoverer.kt"
    i = {
        0x0
    }
    l = {
        0xb4,
        0xb9
    }
    m = "invokeSuspend"
    n = {
        "displayReady"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $foregrounded:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/DisplayRecoverer;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->$foregrounded:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    iget-object v2, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->$foregrounded:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/unity3d/ads/adplayer/DisplayMessage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 175
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1;

    iget-object v6, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    invoke-direct {v1, p1, v6, v4}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 180
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->label:I

    invoke-interface {p1, v5}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    iget-object v5, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->$foregrounded:Landroid/app/Activity;

    check-cast v5, Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$launchDisplay-IoAF18A(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 182
    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v4

    .line 185
    :cond_4
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 173
    :cond_5
    :goto_2
    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayMessage;

    return-object p1
.end method
