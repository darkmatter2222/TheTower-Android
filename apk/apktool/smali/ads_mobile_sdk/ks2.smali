.class public final Lads_mobile_sdk/ks2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic a:Z

.field public synthetic b:Z

.field public final synthetic c:Lads_mobile_sdk/pt2;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public final synthetic f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ks2;->c:Lads_mobile_sdk/pt2;

    iput-object p2, p0, Lads_mobile_sdk/ks2;->d:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/ks2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object p4, p0, Lads_mobile_sdk/ks2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move-object v5, p3

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/ks2;

    iget-object v1, p0, Lads_mobile_sdk/ks2;->c:Lads_mobile_sdk/pt2;

    iget-object v2, p0, Lads_mobile_sdk/ks2;->d:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/ks2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, p0, Lads_mobile_sdk/ks2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/ks2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lads_mobile_sdk/ks2;->a:Z

    iput-boolean p2, v0, Lads_mobile_sdk/ks2;->b:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ks2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v11, p0, Lads_mobile_sdk/ks2;->a:Z

    iget-boolean v12, p0, Lads_mobile_sdk/ks2;->b:Z

    .line 461
    iget-object p1, p0, Lads_mobile_sdk/ks2;->c:Lads_mobile_sdk/pt2;

    .line 462
    iget-object v10, p1, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 463
    iget-object v6, p1, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    .line 464
    iget-object v7, p1, Lads_mobile_sdk/pt2;->f:Lads_mobile_sdk/tx;

    .line 465
    iget-object v3, p1, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 466
    iget-object v8, p1, Lads_mobile_sdk/pt2;->h:Lads_mobile_sdk/f13;

    .line 467
    iget-boolean v13, p1, Lads_mobile_sdk/pt2;->H:Z

    .line 468
    sget-object v0, Lads_mobile_sdk/j53;->b:Lads_mobile_sdk/h53;

    .line 469
    iget-object v4, p1, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    .line 470
    new-instance v0, Lads_mobile_sdk/js2;

    iget-object v9, p0, Lads_mobile_sdk/ks2;->d:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/ks2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v1, p0, Lads_mobile_sdk/ks2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v5, p0, Lads_mobile_sdk/ks2;->c:Lads_mobile_sdk/pt2;

    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/js2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/ex0;Lads_mobile_sdk/k6;Lads_mobile_sdk/pt2;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/f13;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZZZ)V

    return-object v0
.end method
