.class public final Lads_mobile_sdk/fw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    .line 317
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->b()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 1

    .line 321
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 322
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    .line 313
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->c()V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 1

    .line 333
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->f()V

    return-void
.end method

.method public final onVideoMute()V
    .locals 7

    .line 337
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 338
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    check-cast v0, Lads_mobile_sdk/gp3;

    .line 340
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/cp3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/cp3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 341
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 342
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final onVideoPause()V
    .locals 7

    .line 325
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 326
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    check-cast v0, Lads_mobile_sdk/gp3;

    .line 328
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/dp3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/dp3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 329
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 330
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final onVideoPlay()V
    .locals 7

    .line 329
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 330
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    check-cast v0, Lads_mobile_sdk/gp3;

    .line 332
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/ep3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/ep3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 333
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 334
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final onVideoUnmute()V
    .locals 7

    .line 341
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    .line 342
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    check-cast v0, Lads_mobile_sdk/gp3;

    .line 344
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/fp3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/fp3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 345
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 346
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final reportAdClicked()V
    .locals 1

    .line 305
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->d()V

    return-void
.end method

.method public final reportAdImpression()V
    .locals 1

    .line 309
    iget-object v0, p0, Lads_mobile_sdk/fw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->e()V

    return-void
.end method
