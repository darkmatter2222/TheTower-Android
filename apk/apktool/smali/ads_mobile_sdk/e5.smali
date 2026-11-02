.class public final Lads_mobile_sdk/e5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

.field public final synthetic b:Lads_mobile_sdk/h6;

.field public final synthetic c:Lads_mobile_sdk/qx2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/e5;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p2, p0, Lads_mobile_sdk/e5;->b:Lads_mobile_sdk/h6;

    iput-object p3, p0, Lads_mobile_sdk/e5;->c:Lads_mobile_sdk/qx2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/e5;

    iget-object v0, p0, Lads_mobile_sdk/e5;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v1, p0, Lads_mobile_sdk/e5;->b:Lads_mobile_sdk/h6;

    iget-object v2, p0, Lads_mobile_sdk/e5;->c:Lads_mobile_sdk/qx2;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/e5;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/h6;Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/e5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/e5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/e5;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v0, p0, Lads_mobile_sdk/e5;->b:Lads_mobile_sdk/h6;

    .line 619
    iget-object v0, v0, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 620
    iget-object v1, p0, Lads_mobile_sdk/e5;->c:Lads_mobile_sdk/qx2;

    .line 621
    iget-object v1, v1, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 622
    invoke-interface {p1, v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;->onAdFailedToPreload(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 623
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
