.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
