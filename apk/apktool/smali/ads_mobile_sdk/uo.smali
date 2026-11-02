.class public final Lads_mobile_sdk/uo;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/uo;

    invoke-direct {v0, p2}, Lads_mobile_sdk/uo;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/uo;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lads_mobile_sdk/ck1;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/uo;

    invoke-direct {v0, p2}, Lads_mobile_sdk/uo;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/uo;->b:Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/uo;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget v1, p0, Lads_mobile_sdk/uo;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/uo;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ck1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/uo;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/ck1;

    .line 132
    sget-object v1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 133
    iget-object v1, v1, Lads_mobile_sdk/vf0;->w:Lads_mobile_sdk/dw2;

    .line 134
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 135
    iput-object p1, p0, Lads_mobile_sdk/uo;->b:Ljava/lang/Object;

    iput v2, p0, Lads_mobile_sdk/uo;->a:I

    .line 136
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    new-instance v1, Lads_mobile_sdk/o53;

    invoke-virtual {p1}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    .line 138
    iget-object v3, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lads_mobile_sdk/o53;-><init>(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 140
    iget-object v2, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v2, Lads_mobile_sdk/di1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/di1;-><init>(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 143
    :goto_1
    check-cast p1, Lads_mobile_sdk/o53;

    .line 144
    new-instance v1, Lads_mobile_sdk/wo;

    invoke-direct {v1, v0, p1}, Lads_mobile_sdk/wo;-><init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;)V

    return-object v1
.end method
