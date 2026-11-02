.class final Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DisplayRecoverer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/unity3d/ads/adplayer/DisplayMessage;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/unity3d/ads/adplayer/DisplayMessage;"
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
    c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2"
    f = "DisplayRecoverer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/DisplayRecoverer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/unity3d/ads/adplayer/DisplayMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/DisplayMessage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayMessage;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->invoke(Lcom/unity3d/ads/adplayer/DisplayMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 178
    iget v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayMessage;

    instance-of v0, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/DisplayMessage;->getOpportunityId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1$1$displayReady$1$2;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    invoke-static {v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$getOpportunityId$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
