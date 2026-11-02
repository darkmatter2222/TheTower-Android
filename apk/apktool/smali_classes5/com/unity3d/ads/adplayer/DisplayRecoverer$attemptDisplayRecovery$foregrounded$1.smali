.class final Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DisplayRecoverer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/DisplayRecoverer;->attemptDisplayRecovery(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/app/Activity;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayRecoverer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRecoverer.kt\ncom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,250:1\n56#2:251\n59#2:255\n46#3:252\n51#3:254\n105#4:253\n*S KotlinDebug\n*F\n+ 1 DisplayRecoverer.kt\ncom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1\n*L\n153#1:251\n153#1:255\n153#1:252\n153#1:254\n153#1:253\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Activity;",
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
    c = "com.unity3d.ads.adplayer.DisplayRecoverer$attemptDisplayRecovery$foregrounded$1"
    f = "DisplayRecoverer.kt"
    i = {}
    l = {
        0x9a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

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

    new-instance p1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->this$0:Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    invoke-static {p1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$getFocusRepository$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/data/repository/FocusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/repository/FocusRepository;->getFocusState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 253
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1;

    invoke-direct {v1, p1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1$invokeSuspend$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 255
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 154
    iput v2, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;->label:I

    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
