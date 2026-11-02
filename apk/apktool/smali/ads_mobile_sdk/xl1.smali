.class public final Lads_mobile_sdk/xl1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/cm1;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xl1;->b:Lads_mobile_sdk/cm1;

    iput-object p2, p0, Lads_mobile_sdk/xl1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/xl1;

    iget-object v0, p0, Lads_mobile_sdk/xl1;->b:Lads_mobile_sdk/cm1;

    iget-object v1, p0, Lads_mobile_sdk/xl1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xl1;-><init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/xl1;

    iget-object v0, p0, Lads_mobile_sdk/xl1;->b:Lads_mobile_sdk/cm1;

    iget-object v1, p0, Lads_mobile_sdk/xl1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xl1;-><init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xl1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 310
    iget v1, p0, Lads_mobile_sdk/xl1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lads_mobile_sdk/xl1;->b:Lads_mobile_sdk/cm1;

    .line 312
    iget-object p1, p1, Lads_mobile_sdk/cm1;->q:Lads_mobile_sdk/ks1;

    .line 313
    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/if1;

    sget-object v1, Lads_mobile_sdk/ae1;->b:Lads_mobile_sdk/ae1;

    iget-object v3, p0, Lads_mobile_sdk/xl1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iput v2, p0, Lads_mobile_sdk/xl1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    invoke-static {p1, v1, v3, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/ae1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 315
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
