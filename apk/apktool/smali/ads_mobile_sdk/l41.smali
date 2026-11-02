.class public final Lads_mobile_sdk/l41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/q41;

.field public final synthetic b:Lads_mobile_sdk/k41;

.field public final synthetic c:Lads_mobile_sdk/k41;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/k41;Lads_mobile_sdk/k41;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l41;->a:Lads_mobile_sdk/q41;

    iput-object p2, p0, Lads_mobile_sdk/l41;->b:Lads_mobile_sdk/k41;

    iput-object p3, p0, Lads_mobile_sdk/l41;->c:Lads_mobile_sdk/k41;

    iput-boolean p4, p0, Lads_mobile_sdk/l41;->d:Z

    iput-boolean p5, p0, Lads_mobile_sdk/l41;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/l41;

    iget-object v1, p0, Lads_mobile_sdk/l41;->a:Lads_mobile_sdk/q41;

    iget-object v2, p0, Lads_mobile_sdk/l41;->b:Lads_mobile_sdk/k41;

    iget-object v3, p0, Lads_mobile_sdk/l41;->c:Lads_mobile_sdk/k41;

    iget-boolean v4, p0, Lads_mobile_sdk/l41;->d:Z

    iget-boolean v5, p0, Lads_mobile_sdk/l41;->e:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/l41;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/k41;Lads_mobile_sdk/k41;ZZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/l41;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/l41;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/l41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lads_mobile_sdk/l41;->a:Lads_mobile_sdk/q41;

    .line 151
    iget-object v0, p1, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lads_mobile_sdk/l41;->b:Lads_mobile_sdk/k41;

    iget-object v2, p0, Lads_mobile_sdk/l41;->c:Lads_mobile_sdk/k41;

    iget-boolean v3, p0, Lads_mobile_sdk/l41;->d:Z

    iget-boolean v4, p0, Lads_mobile_sdk/l41;->e:Z

    monitor-enter v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    .line 153
    :goto_0
    :try_start_0
    iget-boolean v7, p1, Lads_mobile_sdk/q41;->k:Z

    if-nez v7, :cond_1

    .line 154
    sget-object v8, Lads_mobile_sdk/k41;->c:Lads_mobile_sdk/k41;

    if-ne v2, v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 155
    sget-object v9, Lads_mobile_sdk/k41;->c:Lads_mobile_sdk/k41;

    if-ne v2, v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 156
    sget-object v10, Lads_mobile_sdk/k41;->d:Lads_mobile_sdk/k41;

    if-ne v2, v10, :cond_3

    move v10, v5

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    if-eqz v1, :cond_4

    .line 157
    sget-object v1, Lads_mobile_sdk/k41;->e:Lads_mobile_sdk/k41;

    if-ne v2, v1, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    move v1, v6

    :goto_4
    if-eq v3, v4, :cond_5

    move v2, v5

    goto :goto_5

    :cond_5
    move v2, v6

    :goto_5
    if-nez v7, :cond_7

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v5, v6

    .line 158
    :cond_7
    :goto_6
    iput-boolean v5, p1, Lads_mobile_sdk/q41;->k:Z

    if-eqz v8, :cond_8

    .line 159
    invoke-virtual {p1}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    :cond_8
    if-eqz v9, :cond_9

    .line 162
    invoke-virtual {p1}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    :cond_9
    if-eqz v10, :cond_a

    .line 165
    invoke-virtual {p1}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    :cond_a
    if-eqz v1, :cond_b

    .line 168
    invoke-virtual {p1}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    :cond_b
    if-eqz v2, :cond_c

    .line 171
    invoke-virtual {p1}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    .line 173
    :cond_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0

    throw p1
.end method
