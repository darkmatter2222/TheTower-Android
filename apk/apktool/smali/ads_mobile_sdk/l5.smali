.class public final Lads_mobile_sdk/l5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/h6;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

.field public final synthetic d:Lads_mobile_sdk/xt2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    iput-object p1, p0, Lads_mobile_sdk/l5;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p3, p0, Lads_mobile_sdk/l5;->d:Lads_mobile_sdk/xt2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/l5;

    iget-object v0, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    iget-object v1, p0, Lads_mobile_sdk/l5;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v2, p0, Lads_mobile_sdk/l5;->d:Lads_mobile_sdk/xt2;

    invoke-direct {p1, v1, v0, v2, p2}, Lads_mobile_sdk/l5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/l5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/l5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/l5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 383
    iget v1, p0, Lads_mobile_sdk/l5;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    iget-object p1, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    .line 385
    iget-object p1, p1, Lads_mobile_sdk/h6;->g:Lads_mobile_sdk/ex0;

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    const-string v1, "key"

    const-string v3, "gads:preload_validator:enabled"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v3, v1, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 405
    new-instance p1, Lads_mobile_sdk/wq2;

    .line 406
    iget-object v3, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    .line 407
    iget-object v4, v3, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 408
    iget-object v3, v3, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    .line 409
    sget-object v5, Lads_mobile_sdk/xq2;->a:Lads_mobile_sdk/xq2;

    .line 410
    invoke-direct {p1, v4, v3, v5}, Lads_mobile_sdk/wq2;-><init>(Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/xq2;)V

    .line 411
    new-instance v3, Lads_mobile_sdk/j5;

    iget-object v4, p0, Lads_mobile_sdk/l5;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v5, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    iget-object v6, p0, Lads_mobile_sdk/l5;->d:Lads_mobile_sdk/xt2;

    invoke-direct {v3, v4, v5, v6, v1}, Lads_mobile_sdk/j5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/l5;->a:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 423
    :cond_2
    sget-object p1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p0, Lads_mobile_sdk/l5;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v0, p0, Lads_mobile_sdk/l5;->b:Lads_mobile_sdk/h6;

    iget-object v2, p0, Lads_mobile_sdk/l5;->d:Lads_mobile_sdk/xt2;

    .line 674
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 675
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 676
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 677
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 678
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 684
    new-instance v7, Lads_mobile_sdk/k5;

    invoke-direct {v7, p1, v0, v2, v1}, Lads_mobile_sdk/k5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/xt2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 685
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
