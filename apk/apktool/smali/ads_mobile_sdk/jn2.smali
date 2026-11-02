.class public final Lads_mobile_sdk/jn2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

.field public final synthetic c:Lads_mobile_sdk/zz2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jn2;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    iput-object p2, p0, Lads_mobile_sdk/jn2;->c:Lads_mobile_sdk/zz2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/jn2;

    iget-object v0, p0, Lads_mobile_sdk/jn2;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    iget-object v1, p0, Lads_mobile_sdk/jn2;->c:Lads_mobile_sdk/zz2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/jn2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lads_mobile_sdk/ck1;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/jn2;

    iget-object v0, p0, Lads_mobile_sdk/jn2;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    iget-object v1, p0, Lads_mobile_sdk/jn2;->c:Lads_mobile_sdk/zz2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/jn2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/jn2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget v1, p0, Lads_mobile_sdk/jn2;->a:I

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

    iget-object p1, p0, Lads_mobile_sdk/jn2;->c:Lads_mobile_sdk/zz2;

    iput v2, p0, Lads_mobile_sdk/jn2;->a:I

    .line 75
    invoke-virtual {p1}, Lads_mobile_sdk/wy2;->c()Lads_mobile_sdk/o53;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/do2;

    .line 76
    new-instance v2, Lads_mobile_sdk/mn2;

    .line 77
    iget-object v3, p1, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 78
    const-string v4, "The backing field has not yet been initialized."

    invoke-virtual {v3, v4}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    check-cast v3, Lads_mobile_sdk/ck1;

    invoke-direct {v2, v3, v1, p1}, Lads_mobile_sdk/mn2;-><init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/do2;Lads_mobile_sdk/zz2;)V

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    return-object v2
.end method
