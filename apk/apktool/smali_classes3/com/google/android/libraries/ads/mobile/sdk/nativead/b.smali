.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;->a:Ljava/lang/Object;

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 108
    new-instance v0, Lads_mobile_sdk/o12;

    invoke-direct {v0, p1}, Lads_mobile_sdk/o12;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object v0
.end method
