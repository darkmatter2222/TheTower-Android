.class public final Lads_mobile_sdk/z83;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/b93;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/b93;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p4, p0, Lads_mobile_sdk/z83;->b:Lads_mobile_sdk/b93;

    iput-object p5, p0, Lads_mobile_sdk/z83;->c:Ljava/lang/String;

    iput-object p6, p0, Lads_mobile_sdk/z83;->d:Ljava/lang/String;

    iput-object p1, p0, Lads_mobile_sdk/z83;->e:Landroid/os/Bundle;

    iput-object p2, p0, Lads_mobile_sdk/z83;->f:Landroid/os/Bundle;

    iput-object p3, p0, Lads_mobile_sdk/z83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Lads_mobile_sdk/z83;

    iget-object v4, p0, Lads_mobile_sdk/z83;->b:Lads_mobile_sdk/b93;

    iget-object v5, p0, Lads_mobile_sdk/z83;->c:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/z83;->d:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/z83;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lads_mobile_sdk/z83;->f:Landroid/os/Bundle;

    iget-object v3, p0, Lads_mobile_sdk/z83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/z83;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/b93;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/z83;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z83;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/z83;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 196
    iget v2, v0, Lads_mobile_sdk/z83;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    iget-object v2, v0, Lads_mobile_sdk/z83;->b:Lads_mobile_sdk/b93;

    .line 198
    iget-object v5, v0, Lads_mobile_sdk/z83;->c:Ljava/lang/String;

    .line 199
    iget-object v11, v0, Lads_mobile_sdk/z83;->d:Ljava/lang/String;

    .line 200
    iget-object v12, v0, Lads_mobile_sdk/z83;->e:Landroid/os/Bundle;

    .line 201
    iget-object v13, v0, Lads_mobile_sdk/z83;->f:Landroid/os/Bundle;

    .line 202
    iget-object v14, v0, Lads_mobile_sdk/z83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 203
    iput v3, v0, Lads_mobile_sdk/z83;->a:I

    .line 204
    iget-object v4, v2, Lads_mobile_sdk/b93;->e:Lads_mobile_sdk/rv1;

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lads_mobile_sdk/rv1;->a(Lads_mobile_sdk/rv1;Ljava/lang/String;ZZLads_mobile_sdk/j53;I)Lads_mobile_sdk/jf;

    move-result-object v4

    .line 342
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v10, v6, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 348
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 349
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 350
    iget-object v6, v2, Lads_mobile_sdk/b93;->b:Lads_mobile_sdk/tx;

    .line 351
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 353
    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v7

    if-eqz v4, :cond_c

    .line 354
    instance-of v6, v4, Lads_mobile_sdk/u83;

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 497
    :cond_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 498
    iget-object v3, v3, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 499
    iget-object v3, v3, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 500
    move-object v6, v4

    check-cast v6, Lads_mobile_sdk/u83;

    .line 501
    iget-object v4, v6, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 504
    new-instance v4, Lads_mobile_sdk/g93;

    .line 505
    iget-object v9, v2, Lads_mobile_sdk/b93;->b:Lads_mobile_sdk/tx;

    .line 506
    invoke-direct/range {v4 .. v10}, Lads_mobile_sdk/g93;-><init>(Ljava/lang/String;Lads_mobile_sdk/u83;JLads_mobile_sdk/tx;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    move-object v15, v10

    .line 507
    iget-object v3, v2, Lads_mobile_sdk/b93;->d:Lads_mobile_sdk/f0;

    .line 508
    invoke-virtual {v3}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 509
    :cond_3
    iget-object v3, v2, Lads_mobile_sdk/b93;->a:Landroid/content/Context;

    .line 510
    :goto_0
    const-string v2, "context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adType"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestExtras"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serverExtras"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iget-object v2, v6, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 826
    new-instance v5, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 827
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "rewarded_interstitial"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 831
    :cond_4
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 832
    :sswitch_1
    const-string v6, "app_open_ad"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 839
    :cond_5
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 840
    :sswitch_2
    const-string v6, "app_open"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 846
    :cond_6
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 847
    :sswitch_3
    const-string v6, "interstitial"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 849
    :cond_7
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 850
    :sswitch_4
    const-string v6, "rewarded"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    .line 853
    :cond_8
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 854
    :sswitch_5
    const-string v6, "native"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    .line 859
    :cond_9
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 860
    :sswitch_6
    const-string v6, "banner"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 861
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 868
    :cond_a
    :goto_1
    sget-object v6, Lcom/google/android/gms/ads/AdFormat;->UNKNOWN:Lcom/google/android/gms/ads/AdFormat;

    .line 869
    :goto_2
    invoke-direct {v5, v6, v13}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    if-eqz v14, :cond_b

    .line 875
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v17

    .line 876
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v18

    .line 877
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getFormatString()Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isAnchoredAdaptiveBanner()Z

    move-result v20

    .line 879
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isInlineAdaptiveBanner()Z

    move-result v21

    .line 880
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v22

    .line 881
    const-string v7, "formatString"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    new-instance v16, Lcom/google/android/gms/ads/AdSize;

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;ZZI)V

    goto :goto_3

    :cond_b
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v6, v16

    .line 1231
    new-instance v7, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v3, v5, v12, v6}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;)V

    .line 1232
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V

    goto :goto_5

    :cond_c
    :goto_4
    move-object v15, v10

    .line 1233
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1234
    new-instance v4, Lads_mobile_sdk/m83;

    .line 1237
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x4e

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1238
    const-string v8, "Adapter failed to instantiate."

    invoke-direct/range {v4 .. v10}, Lads_mobile_sdk/m83;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 1381
    :goto_5
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 1382
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_d

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_d
    if-ne v2, v1, :cond_e

    return-object v1

    :cond_e
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_6
        -0x3ebdafe9 -> :sswitch_5
        -0xe47b3f2 -> :sswitch_4
        0x240b672c -> :sswitch_3
        0x459991a8 -> :sswitch_2
        0x69fe9e1a -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch
.end method
