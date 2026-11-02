.class public final Lads_mobile_sdk/ln2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zz2;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ln2;->a:Lads_mobile_sdk/zz2;

    iput-object p2, p0, Lads_mobile_sdk/ln2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iput-object p3, p0, Lads_mobile_sdk/ln2;->c:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    new-instance v0, Lads_mobile_sdk/ln2;

    iget-object v1, p0, Lads_mobile_sdk/ln2;->a:Lads_mobile_sdk/zz2;

    iget-object v2, p0, Lads_mobile_sdk/ln2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iget-object v3, p0, Lads_mobile_sdk/ln2;->c:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/ln2;-><init>(Lads_mobile_sdk/zz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/ln2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ln2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ln2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lads_mobile_sdk/ln2;->a:Lads_mobile_sdk/zz2;

    .line 87
    new-instance v0, Lads_mobile_sdk/ek1;

    iget-object v1, p0, Lads_mobile_sdk/ln2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    .line 88
    new-instance v2, Lads_mobile_sdk/kn2;

    iget-object v3, p0, Lads_mobile_sdk/ln2;->c:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lads_mobile_sdk/kn2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V

    .line 89
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/ek1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/jvm/functions/Function2;)V

    .line 90
    invoke-virtual {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/ei1;)V

    .line 95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
