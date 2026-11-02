.class public final Lads_mobile_sdk/bb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nt3;
.implements Lads_mobile_sdk/li1;


# instance fields
.field public final a:Lads_mobile_sdk/jb3;

.field public final b:Lads_mobile_sdk/ka2;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final e:Lads_mobile_sdk/j53;

.field public final f:Lads_mobile_sdk/ej1;

.field public final g:Lads_mobile_sdk/k;

.field public final h:Lads_mobile_sdk/j43;

.field public final i:Lads_mobile_sdk/u43;

.field public final j:Lads_mobile_sdk/b53;

.field public final k:Lads_mobile_sdk/ex0;

.field public final l:Lads_mobile_sdk/f13;

.field public final m:Lads_mobile_sdk/ur3;

.field public final n:Lcom/google/gson/Gson;

.field public final o:Lads_mobile_sdk/n8;

.field public final p:Lkotlinx/coroutines/CoroutineScope;

.field public volatile q:Z

.field public volatile r:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jb3;Lads_mobile_sdk/ka2;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/ej1;Lads_mobile_sdk/k;Lads_mobile_sdk/j43;Lads_mobile_sdk/u43;Lads_mobile_sdk/b53;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;Lads_mobile_sdk/ur3;Lcom/google/gson/Gson;Lads_mobile_sdk/n8;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "javascriptEngine"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseRequester"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalsProvider"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionFunction"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSideRequestBuilder"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestThrottler"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestThrottlerV2"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestDomainPreloader"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 47
    iput-object v1, v0, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    .line 48
    iput-object v2, v0, Lads_mobile_sdk/bb2;->b:Lads_mobile_sdk/ka2;

    .line 49
    iput-object v3, v0, Lads_mobile_sdk/bb2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    .line 50
    iput-object v4, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iput-object v5, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 52
    iput-object v6, v0, Lads_mobile_sdk/bb2;->f:Lads_mobile_sdk/ej1;

    .line 53
    iput-object v7, v0, Lads_mobile_sdk/bb2;->g:Lads_mobile_sdk/k;

    .line 54
    iput-object v8, v0, Lads_mobile_sdk/bb2;->h:Lads_mobile_sdk/j43;

    .line 55
    iput-object v9, v0, Lads_mobile_sdk/bb2;->i:Lads_mobile_sdk/u43;

    .line 56
    iput-object v10, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 57
    iput-object v11, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 58
    iput-object v12, v0, Lads_mobile_sdk/bb2;->l:Lads_mobile_sdk/f13;

    .line 59
    iput-object v13, v0, Lads_mobile_sdk/bb2;->m:Lads_mobile_sdk/ur3;

    .line 60
    iput-object v14, v0, Lads_mobile_sdk/bb2;->n:Lcom/google/gson/Gson;

    move-object/from16 v1, p15

    .line 61
    iput-object v1, v0, Lads_mobile_sdk/bb2;->o:Lads_mobile_sdk/n8;

    .line 62
    iput-object v15, v0, Lads_mobile_sdk/bb2;->p:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static a(Lads_mobile_sdk/bb2;Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1000
    instance-of v0, p2, Lads_mobile_sdk/va2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/va2;

    iget v1, v0, Lads_mobile_sdk/va2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/va2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/va2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/va2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/va2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1001
    iget v2, v0, Lads_mobile_sdk/va2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-boolean p0, v0, Lads_mobile_sdk/va2;->d:Z

    iget-boolean p1, v0, Lads_mobile_sdk/va2;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iget-object v5, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v2

    move v2, p0

    move-object p0, v5

    move-object v5, p2

    move p2, p1

    move-object p1, v9

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1002
    iget-boolean p2, p0, Lads_mobile_sdk/bb2;->r:Z

    .line 1003
    iget-boolean v2, p0, Lads_mobile_sdk/bb2;->q:Z

    .line 1005
    iget-object v6, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v7, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p0, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput-boolean p2, v0, Lads_mobile_sdk/va2;->c:Z

    iput-boolean v2, v0, Lads_mobile_sdk/va2;->d:Z

    iput v5, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    invoke-static {v6, v7, v8, v0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    goto :goto_3

    .line 1007
    :cond_5
    :goto_1
    check-cast v5, Lads_mobile_sdk/zr0;

    .line 1012
    sget-object v6, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    if-ne v5, v6, :cond_6

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1013
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    instance-of v6, p1, Lads_mobile_sdk/n01;

    if-eqz v6, :cond_7

    check-cast p1, Lads_mobile_sdk/n01;

    .line 1015
    iget-boolean p1, p1, Lads_mobile_sdk/n01;->d:Z

    if-eqz p1, :cond_7

    .line 1016
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    const/4 p1, 0x0

    if-nez v2, :cond_9

    .line 1019
    iget-object p2, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p1, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput v4, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    invoke-static {p2, v2, p0, v0}, Lads_mobile_sdk/b53;->d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_3

    .line 1021
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    if-eqz p2, :cond_c

    .line 1022
    sget-object p2, Lads_mobile_sdk/zr0;->e:Lads_mobile_sdk/zr0;

    if-eq v5, p2, :cond_a

    .line 1023
    sget-object p2, Lads_mobile_sdk/zr0;->f:Lads_mobile_sdk/zr0;

    if-ne v5, p2, :cond_c

    .line 1025
    :cond_a
    iget-object p2, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p1, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput v3, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1026
    invoke-static {p2, v2, p0, v0}, Lads_mobile_sdk/b53;->d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    :goto_3
    return-object v1

    .line 1027
    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1029
    instance-of v0, p1, Lads_mobile_sdk/wa2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/wa2;

    iget v1, v0, Lads_mobile_sdk/wa2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wa2;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/wa2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wa2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/wa2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1030
    iget v2, v0, Lads_mobile_sdk/wa2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1036
    iget-object p1, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p0, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    iput v4, v0, Lads_mobile_sdk/wa2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    invoke-static {p1, v2, v5, v0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 1038
    :cond_4
    :goto_1
    check-cast p1, Lads_mobile_sdk/zr0;

    .line 1045
    sget-object v2, Lads_mobile_sdk/zr0;->e:Lads_mobile_sdk/zr0;

    if-ne p1, v2, :cond_6

    .line 1046
    iget-object p1, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    const/4 v4, 0x0

    iput-object v4, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    iput v3, v0, Lads_mobile_sdk/wa2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    invoke-static {p1, v2, p0, v0}, Lads_mobile_sdk/b53;->c(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    .line 1048
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "CSRB A/B divergence: "

    const-string v3, "Too many recently failed requests for ad unit ID: "

    .line 2
    instance-of v4, v1, Lads_mobile_sdk/xa2;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lads_mobile_sdk/xa2;

    iget v5, v4, Lads_mobile_sdk/xa2;->l:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/xa2;->l:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/xa2;

    invoke-direct {v4, v0, v1}, Lads_mobile_sdk/xa2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v4, Lads_mobile_sdk/xa2;->j:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 68
    iget v6, v4, Lads_mobile_sdk/xa2;->l:I

    const-string v7, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ec3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_1
    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ac3;

    iget-object v2, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/bb2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_2
    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_10

    :pswitch_3
    iget-boolean v0, v4, Lads_mobile_sdk/xa2;->i:Z

    iget-object v3, v4, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    iget-object v6, v4, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iget-object v10, v4, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v12, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v13, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/rr3;

    iget-object v14, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/bb2;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 p1, v8

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 69
    :pswitch_4
    iget-boolean v0, v4, Lads_mobile_sdk/xa2;->i:Z

    iget-object v3, v4, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v10, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/bb2;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto/16 :goto_a

    .line 70
    :pswitch_5
    iget-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_1
    move-object v11, v0

    goto/16 :goto_7

    .line 71
    :pswitch_6
    iget-object v2, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    .line 72
    :pswitch_7
    iget-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v6

    move-object v5, v10

    goto/16 :goto_17

    .line 73
    :pswitch_8
    iget-wide v10, v4, Lads_mobile_sdk/xa2;->h:J

    iget-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_2

    .line 74
    :pswitch_9
    iget-wide v10, v4, Lads_mobile_sdk/xa2;->h:J

    iget-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    goto/16 :goto_18

    .line 75
    :pswitch_a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, v0, Lads_mobile_sdk/bb2;->o:Lads_mobile_sdk/n8;

    invoke-virtual {v1}, Lads_mobile_sdk/n8;->g()V

    .line 81
    :cond_2
    sget-object v1, Lads_mobile_sdk/s11;->D1:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 278
    invoke-static {v1, v6, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 279
    :try_start_7
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v10

    .line 281
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->x0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    iget-object v1, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v12, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-wide v10, v4, Lads_mobile_sdk/xa2;->h:J

    iput v8, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v13, v12, v4}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-ne v1, v5, :cond_3

    goto/16 :goto_12

    :cond_3
    move-object v12, v6

    .line 283
    :goto_1
    :try_start_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 284
    iget-object v1, v0, Lads_mobile_sdk/bb2;->i:Lads_mobile_sdk/u43;

    iget-object v13, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v13

    iput-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v12, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-wide v10, v4, Lads_mobile_sdk/xa2;->h:J

    const/4 v14, 0x2

    iput v14, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v13, v4}, Lads_mobile_sdk/u43;->a(Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_4

    goto/16 :goto_12

    .line 285
    :cond_4
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 287
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->y0()J

    move-result-wide v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :cond_5
    move-object v12, v6

    .line 289
    :cond_6
    :goto_3
    :try_start_9
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v13

    invoke-static {v10, v11, v13, v14}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 291
    iget-object v1, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v10, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v12, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :try_start_a
    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v13, 0x3

    :try_start_b
    iput v13, v4, Lads_mobile_sdk/xa2;->l:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :try_start_c
    invoke-virtual {v1, v11, v10, v4}, Lads_mobile_sdk/b53;->b(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ne v1, v5, :cond_7

    goto/16 :goto_12

    :cond_7
    move-object v10, v12

    .line 292
    :goto_4
    :try_start_d
    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v11

    goto :goto_5

    :cond_8
    move-wide/from16 v16, v10

    move-object v10, v12

    move-wide/from16 v11, v16

    .line 295
    :goto_5
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-lez v1, :cond_a

    .line 298
    iput-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v1, 0x4

    :try_start_f
    iput v1, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-static {v11, v12, v4}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-ne v1, v5, :cond_9

    goto/16 :goto_12

    :cond_9
    move-object v2, v6

    move-object v5, v10

    .line 300
    :goto_6
    :try_start_10
    new-instance v1, Lads_mobile_sdk/n01;

    .line 302
    iget-object v0, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". You must wait a few seconds before making another ad request."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-direct {v1, v0, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;Z)V

    .line 309
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 310
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_4
    move-exception v0

    goto/16 :goto_16

    .line 314
    :cond_a
    :try_start_11
    iget-object v1, v0, Lads_mobile_sdk/bb2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    iput-object v0, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    const/4 v3, 0x5

    :try_start_13
    iput v3, v4, Lads_mobile_sdk/xa2;->l:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_1

    goto/16 :goto_12

    .line 315
    :goto_7
    check-cast v1, Lads_mobile_sdk/v01;

    .line 527
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_b

    check-cast v1, Lads_mobile_sdk/i01;

    .line 528
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 529
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 704
    :cond_b
    :try_start_15
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    .line 705
    move-object v3, v0

    check-cast v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 706
    iget-object v0, v11, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 707
    iget-boolean v0, v0, Lads_mobile_sdk/ex0;->w:Z

    if-nez v0, :cond_c

    .line 708
    iget-object v0, v11, Lads_mobile_sdk/bb2;->l:Lads_mobile_sdk/f13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v0

    int-to-double v12, v0

    .line 710
    iget-object v0, v11, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 711
    iget-wide v14, v0, Lads_mobile_sdk/ex0;->x:D

    int-to-double v0, v1

    mul-double/2addr v14, v0

    cmpg-double v0, v12, v14

    if-gez v0, :cond_c

    move v0, v8

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    .line 712
    :goto_8
    iget-object v1, v11, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->S()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    move-object v1, v9

    goto :goto_b

    .line 713
    :cond_e
    :goto_9
    iput-object v11, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-boolean v0, v4, Lads_mobile_sdk/xa2;->i:Z

    const/4 v1, 0x6

    iput v1, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v11, v3, v4}, Lads_mobile_sdk/bb2;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_f

    goto/16 :goto_12

    .line 714
    :cond_f
    :goto_a
    check-cast v1, Lads_mobile_sdk/v01;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :goto_b
    move-object v12, v6

    move-object v13, v10

    move-object v14, v11

    move-object v11, v3

    .line 720
    :try_start_16
    iget-object v3, v14, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->S()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v1, :cond_10

    .line 722
    new-instance v1, Lads_mobile_sdk/m01;

    .line 723
    const-string v3, "Client side request building returned null while building URL."

    .line 724
    invoke-direct {v1, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    :cond_10
    move/from16 p1, v8

    :goto_c
    move-object v6, v12

    move-object v10, v13

    goto :goto_e

    .line 728
    :cond_11
    sget-object v1, Lads_mobile_sdk/s11;->G:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 891
    invoke-static {v1, v3, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 892
    :try_start_17
    iget-object v1, v14, Lads_mobile_sdk/bb2;->n:Lcom/google/gson/Gson;

    invoke-virtual {v1, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 893
    sget-object v3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v3, Lads_mobile_sdk/za2;

    invoke-direct {v3, v1}, Lads_mobile_sdk/za2;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 894
    sget-object v3, Lads_mobile_sdk/zt;->j:Lads_mobile_sdk/yt;

    .line 895
    iget-object v10, v14, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    const-string v15, "AFMA_getAdDictionary"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v14, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v13, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v12, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v11, v4, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iput-object v6, v4, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iput-object v3, v4, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    iput-boolean v0, v4, Lads_mobile_sdk/xa2;->i:Z

    move/from16 p1, v8

    const/4 v8, 0x7

    iput v8, v4, Lads_mobile_sdk/xa2;->l:I

    check-cast v10, Lads_mobile_sdk/rp0;

    invoke-virtual {v10, v15, v1, v4}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-ne v1, v5, :cond_12

    goto/16 :goto_12

    :cond_12
    move-object v10, v6

    .line 896
    :goto_d
    :try_start_18
    check-cast v1, Lads_mobile_sdk/v01;

    .line 955
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lads_mobile_sdk/yt;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/v01;

    move-result-object v1

    .line 1124
    instance-of v3, v1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_13

    .line 1125
    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1126
    :cond_13
    :try_start_19
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_c

    .line 1159
    :goto_e
    :try_start_1a
    instance-of v3, v1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_14

    check-cast v1, Lads_mobile_sdk/i01;

    .line 1160
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1161
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 1354
    :cond_14
    :try_start_1b
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1355
    check-cast v1, Lads_mobile_sdk/zt;

    if-eqz v0, :cond_15

    .line 1361
    sget-object v3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v3, Lads_mobile_sdk/ya2;

    invoke-direct {v3, v1}, Lads_mobile_sdk/ya2;-><init>(Lads_mobile_sdk/zt;)V

    invoke-static {v3}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    :cond_15
    if-eqz v0, :cond_17

    .line 1365
    iget-object v0, v1, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move/from16 v3, p1

    if-ne v0, v3, :cond_17

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v3, v1, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1368
    iget-object v2, v14, Lads_mobile_sdk/bb2;->m:Lads_mobile_sdk/ur3;

    const-string v3, "CSRB A/B divergence"

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v3, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1369
    iget-object v2, v14, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->K()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_f

    .line 1370
    :cond_16
    throw v0

    .line 1373
    :cond_17
    :goto_f
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1551
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_18

    .line 1552
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1553
    :cond_18
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1554
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 1555
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zt;

    .line 1636
    iget-object v2, v14, Lads_mobile_sdk/bb2;->b:Lads_mobile_sdk/ka2;

    iput-object v14, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    const/16 v3, 0x8

    iput v3, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v2, v1, v0, v4}, Lads_mobile_sdk/ka2;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/zt;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_19

    goto :goto_12

    :cond_19
    move-object v2, v14

    .line 1637
    :goto_10
    check-cast v1, Lads_mobile_sdk/v01;

    .line 1927
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1a

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 1928
    :cond_1a
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1929
    check-cast v0, Lads_mobile_sdk/ac3;

    .line 1933
    iget-object v1, v2, Lads_mobile_sdk/bb2;->g:Lads_mobile_sdk/k;

    iput-object v2, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v0, v4}, Lads_mobile_sdk/k;->a(Lads_mobile_sdk/ac3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_1b

    goto :goto_12

    .line 2135
    :cond_1b
    :goto_11
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v1

    iget-object v1, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 2136
    iget-object v3, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v3, v3, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v3, v1, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 2138
    iget-object v1, v0, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 2139
    iput-boolean v1, v2, Lads_mobile_sdk/bb2;->r:Z

    .line 2140
    iget-object v10, v2, Lads_mobile_sdk/bb2;->p:Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Lads_mobile_sdk/ab2;

    invoke-direct {v13, v0, v2, v1, v9}, Lads_mobile_sdk/ab2;-><init>(Lads_mobile_sdk/ac3;Lads_mobile_sdk/bb2;ZLkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2156
    iput-boolean v3, v2, Lads_mobile_sdk/bb2;->q:Z

    .line 2158
    new-instance v1, Lads_mobile_sdk/ec3;

    new-instance v3, Lads_mobile_sdk/wb3;

    iget-object v6, v2, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-direct {v3, v6}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    invoke-direct {v1, v3, v0}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;)V

    .line 2159
    iget-object v0, v2, Lads_mobile_sdk/bb2;->f:Lads_mobile_sdk/ej1;

    iput-object v1, v4, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    const/16 v2, 0xa

    iput v2, v4, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v0, v1, v4}, Lads_mobile_sdk/ej1;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_1c

    :goto_12
    return-object v5

    :cond_1c
    move-object v0, v1

    .line 2160
    :goto_13
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catchall_5
    move-exception v0

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object v10, v6

    .line 2277
    :goto_14
    :try_start_1c
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2281
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_21

    .line 2283
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1d

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d

    .line 2289
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2295
    :cond_1d
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_20

    .line 2296
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1f

    .line 2297
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1e

    throw v0

    .line 2298
    :cond_1e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2299
    :cond_1f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2300
    :cond_20
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2301
    :cond_21
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 2302
    :try_start_1d
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :catchall_8
    move-exception v0

    :try_start_1e
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :goto_15
    move-object v6, v12

    move-object v12, v13

    goto :goto_18

    :catchall_9
    move-exception v0

    move-object v6, v12

    move-object v10, v13

    :goto_16
    move-object v12, v10

    goto :goto_18

    :catchall_a
    move-exception v0

    move-object v2, v6

    move-object v5, v12

    :goto_17
    move-object v6, v2

    move-object v12, v5

    goto :goto_18

    :catchall_b
    move-exception v0

    move-object v12, v6

    .line 2342
    :goto_18
    :try_start_1f
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2346
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_26

    .line 2348
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_22

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_22

    .line 2354
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2360
    :cond_22
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_25

    .line 2361
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_24

    .line 2362
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_23

    throw v0

    .line 2363
    :cond_23
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2364
    :cond_24
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2365
    :cond_25
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2366
    :cond_26
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 2367
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1028
    invoke-static {p0, p4}, Lads_mobile_sdk/bb2;->a(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 999
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/bb2;->a(Lads_mobile_sdk/bb2;Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ta2;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ta2;

    iget v3, v2, Lads_mobile_sdk/ta2;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ta2;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ta2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ta2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v0, v8, Lads_mobile_sdk/ta2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 186
    iget v3, v8, Lads_mobile_sdk/ta2;->g:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v9, "CSRB error: "

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iget-object v3, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v7, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/bb2;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v3

    move-object v12, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_7

    .line 188
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lads_mobile_sdk/s11;->G:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 368
    invoke-static {v0, v3, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 369
    :try_start_2
    iget-object v0, v1, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    iput-object v1, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iput-object v3, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iput v5, v8, Lads_mobile_sdk/ta2;->g:I

    check-cast v0, Lads_mobile_sdk/yq1;

    invoke-virtual {v0, v8}, Lads_mobile_sdk/yq1;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v1

    move-object v11, v3

    move-object v12, v11

    .line 370
    :goto_1
    :try_start_3
    check-cast v0, Lads_mobile_sdk/v01;

    .line 559
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_5

    check-cast v0, Lads_mobile_sdk/i01;

    .line 560
    new-instance v13, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0xf7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v13, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    goto/16 :goto_6

    .line 747
    :cond_5
    const-string v3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    iget-object v3, v7, Lads_mobile_sdk/bb2;->h:Lads_mobile_sdk/j43;

    .line 750
    iget-object v0, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->o0()Lads_mobile_sdk/yp2;

    move-result-object v5

    .line 751
    iget-object v0, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->m0()Lads_mobile_sdk/hj2;

    move-result-object v0

    .line 752
    iget-object v7, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->w()Ljava/util/Map;

    move-result-object v7

    .line 753
    iput-object v6, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    iput-object v11, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iput-object v10, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iput v4, v8, Lads_mobile_sdk/ta2;->g:I

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/j43;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    move-object v2, v11

    move-object v3, v12

    .line 754
    :goto_3
    :try_start_4
    check-cast v0, Lads_mobile_sdk/v01;

    .line 768
    sget-object v5, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v5, Lads_mobile_sdk/ua2;

    invoke-direct {v5, v0}, Lads_mobile_sdk/ua2;-><init>(Lads_mobile_sdk/v01;)V

    invoke-static {v5}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 771
    instance-of v5, v0, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_8

    .line 774
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v12, v5, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    .line 775
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v13, v5, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    if-eqz v13, :cond_7

    const-string v14, ","

    const/16 v20, 0x3e

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    goto :goto_4

    :cond_7
    move-object v14, v10

    .line 776
    :goto_4
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v13, v5, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    .line 777
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-boolean v5, v5, Lads_mobile_sdk/zt;->d:Z

    .line 778
    iget-object v6, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    .line 779
    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/q01;

    invoke-virtual {v7}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/zt;

    iget-object v7, v7, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 780
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    .line 784
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v18, 0x41

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 785
    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    iput-object v11, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    goto :goto_5

    .line 796
    :cond_8
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_9

    .line 798
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0xf7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 799
    iput-object v11, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_5
    move-object v11, v2

    move-object v12, v3

    .line 961
    :goto_6
    :try_start_5
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_a

    .line 962
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    invoke-static {v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 963
    :cond_a
    invoke-static {v11, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_7
    move-object v11, v2

    goto :goto_9

    :goto_8
    move-object v3, v12

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v11, v3

    .line 973
    :goto_9
    :try_start_6
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 977
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_f

    .line 979
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 985
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 991
    :cond_b
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e

    .line 992
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d

    .line 993
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_c

    throw v0

    .line 994
    :cond_c
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 995
    :cond_d
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 996
    :cond_e
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 997
    :cond_f
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 998
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
