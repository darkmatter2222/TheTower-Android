.class public final Lads_mobile_sdk/lt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;
.implements Lads_mobile_sdk/h73;


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/du1;

.field public final c:Lads_mobile_sdk/rb;

.field public final d:Lads_mobile_sdk/d63;

.field public final e:Ljava/util/Optional;

.field public final f:Lads_mobile_sdk/ec3;

.field public final g:Lads_mobile_sdk/i2;

.field public final h:Lads_mobile_sdk/ks3;

.field public final i:I

.field public final j:Lads_mobile_sdk/tx;

.field public final k:Lads_mobile_sdk/bc3;

.field public final l:Lads_mobile_sdk/qs0;

.field public final m:Lads_mobile_sdk/eo2;

.field public final n:Lads_mobile_sdk/cw2;

.field public final o:Lads_mobile_sdk/vn;

.field public final p:Ljava/util/Set;

.field public final q:Lads_mobile_sdk/ex0;

.field public final r:Lads_mobile_sdk/t91;

.field public final s:Lads_mobile_sdk/p02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/du1;Lads_mobile_sdk/rb;Lads_mobile_sdk/d63;Ljava/util/Optional;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/ks3;ILads_mobile_sdk/tx;Lads_mobile_sdk/bc3;Lads_mobile_sdk/qs0;Lads_mobile_sdk/eo2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vn;Ljava/util/Set;Lads_mobile_sdk/ex0;Lads_mobile_sdk/t91;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macroExpander"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverSideVerificationOptionsHolder"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsEventHandler"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitterProvider"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStatsTracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTypes"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataWrapper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 6
    iput-object v1, v0, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    .line 7
    iput-object v2, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 8
    iput-object v3, v0, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    .line 9
    iput-object v4, v0, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    .line 10
    iput-object v5, v0, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    .line 11
    iput-object v6, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 12
    iput-object v7, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 13
    iput-object v8, v0, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    move/from16 v1, p9

    .line 14
    iput v1, v0, Lads_mobile_sdk/lt3;->i:I

    .line 15
    iput-object v9, v0, Lads_mobile_sdk/lt3;->j:Lads_mobile_sdk/tx;

    .line 16
    iput-object v10, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 17
    iput-object v11, v0, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 18
    iput-object v12, v0, Lads_mobile_sdk/lt3;->m:Lads_mobile_sdk/eo2;

    .line 19
    iput-object v13, v0, Lads_mobile_sdk/lt3;->n:Lads_mobile_sdk/cw2;

    .line 20
    iput-object v14, v0, Lads_mobile_sdk/lt3;->o:Lads_mobile_sdk/vn;

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lads_mobile_sdk/lt3;->p:Ljava/util/Set;

    move-object/from16 v1, p17

    .line 22
    iput-object v1, v0, Lads_mobile_sdk/lt3;->q:Lads_mobile_sdk/ex0;

    .line 23
    iput-object v15, v0, Lads_mobile_sdk/lt3;->r:Lads_mobile_sdk/t91;

    .line 26
    new-instance v1, Lads_mobile_sdk/p02;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lads_mobile_sdk/lt3;->s:Lads_mobile_sdk/p02;

    return-void
.end method

.method public static a(Lads_mobile_sdk/lt3;Ljava/util/List;)V
    .locals 7

    .line 929
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 930
    iget-object p0, p0, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    .line 931
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 934
    iget-object v2, p0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 935
    iget-object v3, p0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/16 v6, 0x20

    const/4 v4, 0x0

    move-object v1, p1

    .line 936
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/ft3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ft3;

    iget v3, v2, Lads_mobile_sdk/ft3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ft3;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ft3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ft3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/ft3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 63
    iget v4, v2, Lads_mobile_sdk/ft3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/ft3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getMediationAdError()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;->getValue()I

    move-result v1

    .line 69
    :goto_1
    iget-object v4, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->X:Ljava/util/List;

    .line 231
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 233
    check-cast v7, Landroid/net/Uri;

    .line 234
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "toString(...)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "2."

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "@gw_mpe@"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 399
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    :cond_4
    iget-object v1, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    iget-object v4, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    move-object v7, v4

    move-object v4, v6

    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v0, v2, Lads_mobile_sdk/ft3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/ft3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v2

    move-object v2, v0

    .line 401
    :goto_3
    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 402
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 554
    iget-object v1, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 555
    iget-object v2, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v2, v2, Lads_mobile_sdk/i2;->g0:Ljava/util/List;

    .line 557
    iget-object v3, v0, Lads_mobile_sdk/lt3;->j:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 559
    iget-object v5, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 560
    iget-object v6, v5, Lads_mobile_sdk/bc3;->a:Lads_mobile_sdk/tn3;

    .line 561
    sget-object v7, Lads_mobile_sdk/bc3;->b:[Lkotlin/reflect/KProperty;

    const/4 v8, 0x0

    aget-object v9, v7, v8

    invoke-virtual {v6, v5, v9}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 562
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 563
    :goto_0
    iget-object v9, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 564
    iget-object v10, v9, Lads_mobile_sdk/bc3;->a:Lads_mobile_sdk/tn3;

    .line 565
    aget-object v7, v7, v8

    invoke-virtual {v10, v9, v7}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    if-eqz v7, :cond_1

    .line 566
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->getCustomData()Ljava/lang/String;

    move-result-object v6

    .line 567
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    const-string v7, "uris"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "rewardItem"

    move-object/from16 v8, p1

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 777
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 778
    check-cast v9, Landroid/net/Uri;

    .line 779
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "toString(...)"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    const-string v9, ""

    if-nez v5, :cond_2

    move-object v11, v9

    goto :goto_2

    :cond_2
    move-object v11, v5

    :goto_2
    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "encode(...)"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v13, v11

    const-string v11, "@gw_rwd_userid@"

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 p2, v2

    move-object/from16 v2, v16

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move-object v9, v6

    .line 781
    :goto_3
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "@gw_rwd_custom_data@"

    const/16 v19, 0x0

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 782
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "@gw_tmstmp@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 783
    invoke-interface {v8}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "@gw_rwd_itm@"

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 784
    invoke-interface {v8}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "@gw_rwd_amt@"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 785
    iget-object v2, v1, Lads_mobile_sdk/du1;->b:Ljava/lang/String;

    const-string v17, "@gw_sdkver@"

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 917
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 918
    :cond_4
    invoke-static {v0, v7}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 927
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/jt3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/jt3;

    iget v3, v2, Lads_mobile_sdk/jt3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/jt3;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/jt3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/jt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/jt3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 173
    iget v4, v2, Lads_mobile_sdk/jt3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/jt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 175
    iget-object v3, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 176
    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v6, Lads_mobile_sdk/i2;->j0:Ljava/util/List;

    .line 177
    iget-object v7, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 179
    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 180
    iput-object v0, v2, Lads_mobile_sdk/jt3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/jt3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v2, v0

    .line 181
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 182
    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 190
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ht3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ht3;

    iget v3, v2, Lads_mobile_sdk/ht3;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ht3;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ht3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ht3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/ht3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 184
    iget v4, v2, Lads_mobile_sdk/ht3;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iget-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v2

    move v2, v5

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iget-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v2

    move v2, v5

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    .line 186
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 187
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->d0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 188
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 189
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_b

    .line 190
    invoke-static {v0, v4, v9, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    move-object v0, v3

    .line 191
    :try_start_2
    iget-object v3, v1, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 192
    iget-object v6, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v6, Lads_mobile_sdk/i2;->V:Ljava/util/List;

    move v10, v5

    .line 193
    iget-object v5, v1, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 195
    iget v11, v1, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    .line 196
    iput-object v4, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iput v7, v2, Lads_mobile_sdk/ht3;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v7, v8

    const/4 v8, 0x0

    move-object v12, v4

    move-object v4, v9

    const/4 v9, 0x0

    move v13, v10

    const/4 v10, 0x0

    move-object v14, v7

    move-object v7, v11

    const/4 v11, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0xff0

    move/from16 v20, v16

    move-object/from16 v16, v2

    move/from16 v2, v20

    :try_start_3
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v3, v0, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 197
    :goto_1
    :try_start_4
    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {v3, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 207
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_5

    .line 430
    check-cast v0, Lads_mobile_sdk/i01;

    .line 431
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    const/4 v3, 0x0

    .line 432
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v2, v18

    :goto_2
    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    :goto_3
    move-object/from16 v2, v18

    move-object v4, v2

    .line 440
    :goto_4
    :try_start_5
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 444
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_a

    .line 446
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_6

    .line 452
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 458
    :cond_6
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    .line 459
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    .line 460
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_7

    throw v0

    .line 461
    :cond_7
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 462
    :cond_8
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 463
    :cond_9
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 464
    :cond_a
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 465
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    move v0, v5

    move-object v5, v2

    move v2, v0

    move-object v0, v3

    move-object v3, v8

    .line 499
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {v4, v8, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    move-object v14, v3

    .line 500
    :try_start_7
    iget-object v3, v1, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 501
    iget-object v7, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v7, Lads_mobile_sdk/i2;->V:Ljava/util/List;

    .line 502
    iget-object v9, v1, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 504
    iget v10, v1, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    .line 505
    iput-object v4, v5, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v5, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iput v6, v5, Lads_mobile_sdk/ht3;->f:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object v6, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v16, v5

    move-object v5, v9

    const/4 v9, 0x0

    move-object v11, v6

    move-object v6, v7

    move-object v7, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0xff0

    :try_start_8
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-ne v3, v0, :cond_c

    :goto_5
    return-object v0

    :cond_c
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 506
    :goto_6
    :try_start_9
    check-cast v0, Ljava/util/List;

    .line 508
    invoke-static {v3, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 516
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 775
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_d

    .line 776
    check-cast v0, Lads_mobile_sdk/i01;

    .line 777
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_d
    const/4 v14, 0x0

    .line 778
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 779
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_7
    move-exception v0

    move-object/from16 v2, v18

    :goto_8
    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    goto :goto_a

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    :goto_9
    move-object/from16 v2, v18

    move-object v4, v2

    .line 1042
    :goto_a
    :try_start_a
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1046
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_12

    .line 1048
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_e

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_e

    .line 1054
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1060
    :cond_e
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_11

    .line 1061
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_10

    .line 1062
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_f

    throw v0

    .line 1063
    :cond_f
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1064
    :cond_10
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1065
    :cond_11
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1066
    :cond_12
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v0

    .line 1067
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/kt3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/kt3;

    iget v3, v2, Lads_mobile_sdk/kt3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/kt3;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/kt3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/kt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/kt3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 162
    iget v4, v2, Lads_mobile_sdk/kt3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/kt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 164
    iget-object v3, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 165
    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v6, Lads_mobile_sdk/i2;->k0:Ljava/util/List;

    .line 166
    iget-object v7, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 168
    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 169
    iput-object v0, v2, Lads_mobile_sdk/kt3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/kt3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v2, v0

    .line 170
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 171
    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 179
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/et3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/et3;

    iget v3, v2, Lads_mobile_sdk/et3;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/et3;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/et3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/et3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/et3;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 123
    iget v4, v2, Lads_mobile_sdk/et3;->h:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iget-object v8, v2, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iget-object v10, v2, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v10

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->g0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 126
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 127
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v11, 0x0

    if-nez v10, :cond_a

    .line 128
    invoke-static {v0, v4, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 129
    :try_start_0
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v8, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v8, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v9}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v0, v8, v9}, Lads_mobile_sdk/rb;->a(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 335
    instance-of v8, v0, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_4

    .line 336
    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/i01;

    .line 337
    invoke-static {v8, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_4
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 346
    :try_start_1
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 350
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_9

    .line 352
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_5

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5

    .line 358
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 364
    :cond_5
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    .line 365
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_7

    .line 366
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_6

    throw v0

    .line 367
    :cond_6
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 368
    :cond_7
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 369
    :cond_8
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 370
    :cond_9
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 371
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 406
    :try_start_3
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v8, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v8, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v9}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v0, v8, v9}, Lads_mobile_sdk/rb;->a(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 649
    instance-of v8, v0, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_b

    .line 650
    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/i01;

    .line 651
    invoke-static {v8, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 652
    :cond_b
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 653
    :goto_1
    iget-object v4, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    .line 922
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 923
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v8

    move-object v8, v4

    move-object v4, v15

    move-object v15, v0

    move-object v0, v2

    move-object v2, v1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 924
    check-cast v9, Landroid/net/Uri;

    .line 925
    iget-object v10, v2, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 927
    sget-object v11, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 928
    iget-object v12, v2, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v12, v12, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 929
    iput-object v2, v0, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    iput-object v15, v0, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iput-object v4, v0, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iput-object v8, v0, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iput-object v4, v0, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iput v6, v0, Lads_mobile_sdk/et3;->h:I

    invoke-virtual {v10, v9, v11, v12, v0}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_c

    goto :goto_4

    :cond_c
    move-object v11, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v4

    .line 930
    :goto_3
    check-cast v0, Landroid/net/Uri;

    .line 1200
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    move-object v4, v9

    move-object v2, v11

    goto :goto_2

    .line 1201
    :cond_d
    move-object v9, v4

    check-cast v9, Ljava/util/List;

    .line 1202
    iget-object v8, v2, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 1204
    iget-object v10, v2, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 1205
    iget-object v11, v2, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 1206
    iget v4, v2, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1207
    iput-object v2, v0, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    iput-object v7, v0, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iput-object v7, v0, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iput-object v7, v0, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iput-object v7, v0, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iput v5, v0, Lads_mobile_sdk/et3;->h:I

    const/16 v20, 0x0

    const/16 v22, 0xfb0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v8 .. v22}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    :goto_4
    return-object v3

    .line 1208
    :cond_e
    :goto_5
    check-cast v0, Ljava/util/List;

    .line 1224
    invoke-static {v2, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 1233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    .line 1459
    :try_start_4
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1463
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_13

    .line 1465
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f

    .line 1471
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1477
    :cond_f
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_12

    .line 1478
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11

    .line 1479
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_10

    throw v0

    .line 1480
    :cond_10
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1481
    :cond_11
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1482
    :cond_12
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1483
    :cond_13
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1484
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/it3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/it3;

    iget v3, v2, Lads_mobile_sdk/it3;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/it3;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/it3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/it3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/it3;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 110
    iget v4, v2, Lads_mobile_sdk/it3;->j:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/it3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/it3;->g:Ljava/lang/Integer;

    iget-object v6, v2, Lads_mobile_sdk/it3;->f:Lads_mobile_sdk/i2;

    iget-object v8, v2, Lads_mobile_sdk/it3;->e:Lads_mobile_sdk/ec3;

    iget-object v9, v2, Lads_mobile_sdk/it3;->d:Ljava/util/List;

    iget-object v10, v2, Lads_mobile_sdk/it3;->c:Lads_mobile_sdk/du1;

    iget-object v11, v2, Lads_mobile_sdk/it3;->b:Lads_mobile_sdk/lt3;

    iget-object v12, v2, Lads_mobile_sdk/it3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move-object v11, v3

    move-object v3, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    move-object v6, v4

    move-object/from16 v4, v18

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    iget-object v10, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 113
    iget-object v1, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v1, Lads_mobile_sdk/i2;->R:Ljava/util/List;

    .line 114
    iget-object v8, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 116
    iget v4, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 117
    iput-object v0, v2, Lads_mobile_sdk/it3;->a:Lads_mobile_sdk/lt3;

    iput-object v0, v2, Lads_mobile_sdk/it3;->b:Lads_mobile_sdk/lt3;

    iput-object v10, v2, Lads_mobile_sdk/it3;->c:Lads_mobile_sdk/du1;

    iput-object v9, v2, Lads_mobile_sdk/it3;->d:Ljava/util/List;

    iput-object v8, v2, Lads_mobile_sdk/it3;->e:Lads_mobile_sdk/ec3;

    iput-object v1, v2, Lads_mobile_sdk/it3;->f:Lads_mobile_sdk/i2;

    iput-object v4, v2, Lads_mobile_sdk/it3;->g:Ljava/lang/Integer;

    iput v6, v2, Lads_mobile_sdk/it3;->j:I

    .line 118
    iget-object v6, v0, Lads_mobile_sdk/lt3;->q:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-string v11, "key"

    const-string v12, "gads:enable_impression_sequence:enabled"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v12, v11, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_1

    .line 137
    :cond_4
    iget-object v6, v0, Lads_mobile_sdk/lt3;->s:Lads_mobile_sdk/p02;

    sget-object v11, Lads_mobile_sdk/ct3;->a:Lads_mobile_sdk/ct3;

    new-instance v12, Lads_mobile_sdk/dt3;

    invoke-direct {v12, v0, v7}, Lads_mobile_sdk/dt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v11, v12, v2}, Lads_mobile_sdk/p02;->a(Lads_mobile_sdk/ct3;Lads_mobile_sdk/dt3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    if-ne v6, v3, :cond_5

    move-object v1, v3

    goto :goto_3

    :cond_5
    move-object v12, v0

    move-object v11, v3

    move-object v3, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v1

    move-object v1, v6

    move-object v6, v4

    move-object v4, v12

    .line 138
    :goto_2
    check-cast v1, Lads_mobile_sdk/w91;

    .line 146
    iget-object v13, v12, Lads_mobile_sdk/lt3;->r:Lads_mobile_sdk/t91;

    .line 147
    iput-object v4, v2, Lads_mobile_sdk/it3;->a:Lads_mobile_sdk/lt3;

    iput-object v7, v2, Lads_mobile_sdk/it3;->b:Lads_mobile_sdk/lt3;

    iput-object v7, v2, Lads_mobile_sdk/it3;->c:Lads_mobile_sdk/du1;

    iput-object v7, v2, Lads_mobile_sdk/it3;->d:Ljava/util/List;

    iput-object v7, v2, Lads_mobile_sdk/it3;->e:Lads_mobile_sdk/ec3;

    iput-object v7, v2, Lads_mobile_sdk/it3;->f:Lads_mobile_sdk/i2;

    iput-object v7, v2, Lads_mobile_sdk/it3;->g:Ljava/lang/Integer;

    iput v5, v2, Lads_mobile_sdk/it3;->j:I

    const/4 v15, 0x0

    const/16 v17, 0xcf0

    move-object v7, v6

    move-object v6, v8

    const/4 v8, 0x0

    move-object v5, v9

    const/4 v9, 0x0

    move-object v12, v4

    move-object v4, v10

    const/4 v10, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v18, v12

    move-object v12, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v18

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v1, v3

    .line 148
    :goto_4
    check-cast v1, Ljava/util/List;

    .line 149
    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 159
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/gt3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/gt3;

    iget v3, v2, Lads_mobile_sdk/gt3;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/gt3;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/gt3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/gt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/gt3;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 75
    iget v4, v2, Lads_mobile_sdk/gt3;->k:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 p1, v7

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    iget-object v6, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iget-object v10, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/i2;

    iget-object v11, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/ec3;

    iget-object v12, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/du1;

    iget-object v14, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move/from16 p1, v7

    move-object/from16 v17, v12

    :goto_1
    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    move-object/from16 v16, v13

    goto/16 :goto_6

    :cond_3
    iget-object v4, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v9, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iget-object v11, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->e0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 78
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 79
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v12, 0x0

    if-nez v11, :cond_b

    .line 80
    invoke-static {v0, v4, v9, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 81
    :try_start_0
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v9, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    iget-object v10, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v10}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/rb;->b(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 251
    instance-of v9, v0, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_5

    .line 252
    move-object v9, v0

    check-cast v9, Lads_mobile_sdk/i01;

    .line 253
    invoke-static {v9, v12}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_5
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 262
    :try_start_1
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 266
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_a

    .line 268
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 274
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 280
    :cond_6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    .line 281
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 282
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_7

    throw v0

    .line 283
    :cond_7
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 284
    :cond_8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 285
    :cond_9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 286
    :cond_a
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 287
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 321
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 322
    :try_start_3
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v9, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    iget-object v10, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v10}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/rb;->b(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 529
    instance-of v9, v0, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_c

    .line 530
    move-object v9, v0

    check-cast v9, Lads_mobile_sdk/i01;

    .line 531
    invoke-static {v9, v12}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 532
    :cond_c
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 533
    :goto_2
    iget-object v4, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    .line 766
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v12, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v1

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 768
    check-cast v10, Landroid/net/Uri;

    .line 769
    iget-object v11, v12, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 771
    sget-object v13, Lads_mobile_sdk/is0;->c:Lads_mobile_sdk/is0;

    .line 772
    iget-object v14, v12, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v14, v14, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 773
    iput-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v0, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v9, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/gt3;->k:I

    invoke-virtual {v11, v10, v13, v14, v2}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_d

    goto/16 :goto_7

    :cond_d
    move-object v11, v0

    move-object v0, v10

    move-object v10, v4

    .line 774
    :goto_4
    check-cast v0, Landroid/net/Uri;

    .line 1008
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v0, v11

    goto :goto_3

    .line 1009
    :cond_e
    check-cast v4, Ljava/util/List;

    .line 1010
    iget-object v13, v12, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 1012
    iget-object v11, v12, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 1013
    iget-object v10, v12, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 1014
    iget v9, v12, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1016
    iget-object v14, v12, Lads_mobile_sdk/lt3;->m:Lads_mobile_sdk/eo2;

    .line 1017
    iput-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v13, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v11, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iput-object v0, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iput-object v14, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    iput v6, v2, Lads_mobile_sdk/gt3;->k:I

    .line 1018
    iget-object v6, v12, Lads_mobile_sdk/lt3;->q:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    const-string v15, "key"

    move/from16 p1, v7

    const-string v7, "gads:enable_impression_sequence:enabled"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v7, v15, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f

    move-object v5, v8

    goto :goto_5

    .line 1037
    :cond_f
    iget-object v5, v12, Lads_mobile_sdk/lt3;->s:Lads_mobile_sdk/p02;

    sget-object v6, Lads_mobile_sdk/ct3;->a:Lads_mobile_sdk/ct3;

    new-instance v7, Lads_mobile_sdk/dt3;

    invoke-direct {v7, v12, v8}, Lads_mobile_sdk/dt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v6, v7, v2}, Lads_mobile_sdk/p02;->a(Lads_mobile_sdk/ct3;Lads_mobile_sdk/dt3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    :goto_5
    if-ne v5, v3, :cond_10

    goto :goto_7

    :cond_10
    move-object/from16 v23, v0

    move-object/from16 v17, v4

    move-object v0, v5

    move-object/from16 v24, v14

    move-object v14, v12

    goto/16 :goto_1

    .line 1038
    :goto_6
    move-object/from16 v25, v0

    check-cast v25, Lads_mobile_sdk/w91;

    .line 1062
    iget-object v0, v14, Lads_mobile_sdk/lt3;->r:Lads_mobile_sdk/t91;

    .line 1063
    iput-object v14, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    const/4 v4, 0x3

    iput v4, v2, Lads_mobile_sdk/gt3;->k:I

    const/16 v28, 0x0

    const/16 v30, 0xc30

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, v0

    move-object/from16 v29, v2

    invoke-static/range {v16 .. v30}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    :goto_7
    return-object v3

    :cond_11
    move-object v2, v14

    .line 1064
    :goto_8
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 1093
    iget-object v0, v2, Lads_mobile_sdk/lt3;->n:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/v3;

    .line 1094
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1095
    iget-object v0, v2, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "uris"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    iget-object v3, v0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 1098
    iget-object v5, v0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 1099
    iget-object v6, v0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/16 v9, 0x20

    .line 1100
    invoke-static/range {v3 .. v9}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    .line 1101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    .line 1283
    :try_start_4
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1287
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_16

    .line 1289
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_12

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_12

    .line 1295
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1301
    :cond_12
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    .line 1302
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 1303
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_13

    throw v0

    .line 1304
    :cond_13
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1305
    :cond_14
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1306
    :cond_15
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1307
    :cond_16
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1308
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
