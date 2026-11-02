.class public final Lads_mobile_sdk/cn3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/dn3;

.field public final synthetic c:Lads_mobile_sdk/h41;

.field public final synthetic d:Lads_mobile_sdk/om3;

.field public final synthetic e:Lads_mobile_sdk/zn1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dn3;Lads_mobile_sdk/h41;Lads_mobile_sdk/om3;Lads_mobile_sdk/zn1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cn3;->b:Lads_mobile_sdk/dn3;

    iput-object p2, p0, Lads_mobile_sdk/cn3;->c:Lads_mobile_sdk/h41;

    iput-object p3, p0, Lads_mobile_sdk/cn3;->d:Lads_mobile_sdk/om3;

    iput-object p4, p0, Lads_mobile_sdk/cn3;->e:Lads_mobile_sdk/zn1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lads_mobile_sdk/cn3;

    iget-object v1, p0, Lads_mobile_sdk/cn3;->b:Lads_mobile_sdk/dn3;

    iget-object v2, p0, Lads_mobile_sdk/cn3;->c:Lads_mobile_sdk/h41;

    iget-object v3, p0, Lads_mobile_sdk/cn3;->d:Lads_mobile_sdk/om3;

    iget-object v4, p0, Lads_mobile_sdk/cn3;->e:Lads_mobile_sdk/zn1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/cn3;-><init>(Lads_mobile_sdk/dn3;Lads_mobile_sdk/h41;Lads_mobile_sdk/om3;Lads_mobile_sdk/zn1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/cn3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/cn3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/cn3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget v1, p0, Lads_mobile_sdk/cn3;->a:I

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

    .line 147
    iget-object p1, p0, Lads_mobile_sdk/cn3;->b:Lads_mobile_sdk/dn3;

    .line 148
    iget-object v1, p0, Lads_mobile_sdk/cn3;->c:Lads_mobile_sdk/h41;

    .line 149
    iget-object v3, p1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 150
    iget-object v4, p0, Lads_mobile_sdk/cn3;->d:Lads_mobile_sdk/om3;

    check-cast v4, Lads_mobile_sdk/xi0;

    .line 151
    iget-object v4, v4, Lads_mobile_sdk/xi0;->e0:Lads_mobile_sdk/dw2;

    .line 152
    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/tk0;

    .line 153
    iput v2, p0, Lads_mobile_sdk/cn3;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {p1, v1, v3, v4, p0}, Lads_mobile_sdk/at0;->a(Lads_mobile_sdk/at0;Lads_mobile_sdk/h41;Lads_mobile_sdk/i2;Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 155
    :cond_2
    :goto_0
    iget-object p1, p0, Lads_mobile_sdk/cn3;->e:Lads_mobile_sdk/zn1;

    .line 156
    iget-object p1, p1, Lads_mobile_sdk/zn1;->p:Lads_mobile_sdk/rm3;

    .line 157
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 158
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/rv0;

    .line 159
    iget-object v1, v1, Lads_mobile_sdk/rv0;->e:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 160
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getCustomClickSwipeGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 161
    new-instance v1, Landroid/view/GestureDetector;

    .line 162
    iget-object v2, p0, Lads_mobile_sdk/cn3;->c:Lads_mobile_sdk/h41;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 163
    new-instance v3, Lads_mobile_sdk/fn3;

    invoke-direct {v3, p1}, Lads_mobile_sdk/fn3;-><init>(Lads_mobile_sdk/rm3;)V

    .line 164
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 165
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 172
    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/cn3;->c:Lads_mobile_sdk/h41;

    new-instance v2, Lads_mobile_sdk/bn3;

    invoke-direct {v2, v0, p1}, Lads_mobile_sdk/bn3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/rm3;)V

    .line 173
    iput-object v2, v1, Lads_mobile_sdk/h41;->c:Lkotlin/jvm/functions/Function1;

    .line 174
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
