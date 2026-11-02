.class public final Lads_mobile_sdk/wm3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/v03;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v03;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wm3;->a:Lads_mobile_sdk/v03;

    iput-object p2, p0, Lads_mobile_sdk/wm3;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/wm3;

    iget-object v1, p0, Lads_mobile_sdk/wm3;->a:Lads_mobile_sdk/v03;

    iget-object v2, p0, Lads_mobile_sdk/wm3;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/wm3;-><init>(Lads_mobile_sdk/v03;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/wm3;

    iget-object v1, p0, Lads_mobile_sdk/wm3;->a:Lads_mobile_sdk/v03;

    iget-object v2, p0, Lads_mobile_sdk/wm3;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/wm3;-><init>(Lads_mobile_sdk/v03;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wm3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 170
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lads_mobile_sdk/wm3;->a:Lads_mobile_sdk/v03;

    .line 172
    new-instance v0, Lads_mobile_sdk/bo1;

    iget-object v1, p0, Lads_mobile_sdk/wm3;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    .line 173
    new-instance v2, Lads_mobile_sdk/vm3;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lads_mobile_sdk/vm3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 174
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/bo1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/jvm/functions/Function2;)V

    .line 175
    invoke-virtual {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/ei1;)V

    .line 180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
