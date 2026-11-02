.class public abstract Lads_mobile_sdk/yx2;
.super Lads_mobile_sdk/px2;
.source "SourceFile"


# static fields
.field public static final u:Lads_mobile_sdk/m01;

.field public static final v:Lads_mobile_sdk/m01;

.field public static final w:Lads_mobile_sdk/m01;

.field public static final x:Lads_mobile_sdk/m01;


# instance fields
.field public final n:Lads_mobile_sdk/yf3;

.field public final o:Lads_mobile_sdk/p70;

.field public final p:Ljava/lang/String;

.field public final q:Lcom/google/gson/Gson;

.field public final r:Lads_mobile_sdk/e01;

.field public final s:Lads_mobile_sdk/vw3;

.field public final t:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/m01;

    .line 3
    sget-object v1, Lads_mobile_sdk/kk1;->f:Lads_mobile_sdk/kk1;

    .line 4
    const-string v2, "The ad has already been shown."

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    sput-object v0, Lads_mobile_sdk/yx2;->u:Lads_mobile_sdk/m01;

    .line 9
    new-instance v0, Lads_mobile_sdk/m01;

    .line 11
    sget-object v1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 12
    const-string v2, "The ad format requested does not match the ad format specified when generating a Signal."

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    sput-object v0, Lads_mobile_sdk/yx2;->v:Lads_mobile_sdk/m01;

    .line 17
    new-instance v0, Lads_mobile_sdk/m01;

    .line 19
    sget-object v1, Lads_mobile_sdk/kk1;->i:Lads_mobile_sdk/kk1;

    .line 20
    const-string v2, "The request ID on the ad string does not match the request ID from any valid signal request."

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    sput-object v0, Lads_mobile_sdk/yx2;->w:Lads_mobile_sdk/m01;

    .line 25
    new-instance v0, Lads_mobile_sdk/m01;

    .line 27
    sget-object v1, Lads_mobile_sdk/kk1;->h:Lads_mobile_sdk/kk1;

    .line 28
    const-string v2, "The ad response was malformed."

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    sput-object v0, Lads_mobile_sdk/yx2;->x:Lads_mobile_sdk/m01;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/yf3;Lads_mobile_sdk/p70;Ljava/lang/String;Lcom/google/gson/Gson;Lads_mobile_sdk/e01;Lads_mobile_sdk/vw3;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V
    .locals 16

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 1
    const-string v4, "signalGenerationMap"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cryptoUtil"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adResponse"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "gson"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "httpClient"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "urlPinger"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadScope"

    move-object/from16 v5, p7

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "backgroundScope"

    move-object/from16 v6, p8

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "traceMetaSet"

    move-object/from16 v7, p9

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "flags"

    move-object/from16 v8, p10

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "rootTraceCreator"

    move-object/from16 v9, p11

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "requestId"

    move-object/from16 v10, p12

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "requestType"

    move-object/from16 v11, p13

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "initializationConfigWrapper"

    move-object/from16 v12, p14

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "inspectorAdLifecycleMonitor"

    move-object/from16 v13, p15

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cancellationChannel"

    move-object/from16 v0, p16

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "appState"

    move-object/from16 v0, p17

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p10

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v6, v10

    move-object v7, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v5, p11

    move-object/from16 v12, p16

    move-object v13, v0

    move-object/from16 v0, p0

    .line 73
    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/px2;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;ZLads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V

    .line 74
    iput-object v14, v0, Lads_mobile_sdk/yx2;->n:Lads_mobile_sdk/yf3;

    .line 75
    iput-object v15, v0, Lads_mobile_sdk/yx2;->o:Lads_mobile_sdk/p70;

    move-object/from16 v1, p3

    .line 76
    iput-object v1, v0, Lads_mobile_sdk/yx2;->p:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 77
    iput-object v1, v0, Lads_mobile_sdk/yx2;->q:Lcom/google/gson/Gson;

    move-object/from16 v2, p5

    .line 78
    iput-object v2, v0, Lads_mobile_sdk/yx2;->r:Lads_mobile_sdk/e01;

    move-object/from16 v3, p6

    .line 79
    iput-object v3, v0, Lads_mobile_sdk/yx2;->s:Lads_mobile_sdk/vw3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-static {v3, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/yx2;->t:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1481
    instance-of v2, v1, Lads_mobile_sdk/vx2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/vx2;

    iget v3, v2, Lads_mobile_sdk/vx2;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/vx2;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/vx2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/vx2;-><init>(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lads_mobile_sdk/vx2;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1586
    iget v3, v8, Lads_mobile_sdk/vx2;->m:I

    const-string v9, "decryptedAdResponseBlob"

    const-string v10, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const-string v11, "signalGenerationData"

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/16 :goto_1c

    .line 1587
    :pswitch_1
    iget-object v0, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/i01;

    iget-object v2, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto/16 :goto_18

    .line 1588
    :pswitch_2
    iget-object v0, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    iget-object v6, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/yx2;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    goto/16 :goto_21

    .line 1589
    :pswitch_3
    iget-object v0, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    iget-object v6, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/yx2;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_15

    .line 1590
    :pswitch_4
    iget-object v0, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_11

    .line 1591
    :pswitch_5
    iget v0, v8, Lads_mobile_sdk/vx2;->j:I

    iget-object v3, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    iget-object v14, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/yx2;

    :try_start_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v12, v5

    move-object v5, v3

    move-object v3, v7

    :goto_1
    move v7, v0

    move-object v0, v4

    move-object v4, v15

    move-object v15, v14

    move-object v14, v6

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_3

    .line 1592
    :pswitch_6
    iget-object v0, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/i01;

    iget-object v2, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v2, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lads_mobile_sdk/rr3;

    :try_start_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v1, v12

    goto/16 :goto_20

    .line 1593
    :pswitch_7
    iget-object v0, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object v5, v3

    move-object v6, v4

    move-object v3, v2

    goto/16 :goto_13

    .line 1594
    :pswitch_8
    iget-object v0, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    iget-object v14, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/yx2;

    :try_start_8
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v6

    move-object v6, v12

    :goto_2
    move-object v12, v5

    move-object v5, v13

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    :goto_3
    move-object v1, v12

    move-object v5, v13

    move-object v6, v14

    goto/16 :goto_20

    .line 1595
    :pswitch_9
    iget-object v0, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    iget-object v14, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/yx2;

    :try_start_9
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v1, v6

    move-object v6, v14

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move-object v5, v13

    move-object v6, v14

    goto/16 :goto_21

    .line 1596
    :pswitch_a
    iget-object v2, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iget-object v0, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    goto/16 :goto_1e

    .line 1597
    :pswitch_b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1598
    sget-object v1, Lads_mobile_sdk/s11;->y0:Lads_mobile_sdk/s11;

    .line 1843
    sget-object v3, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 1844
    :try_start_b
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 1845
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v6, v0, Lads_mobile_sdk/yx2;->p:Ljava/lang/String;

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1846
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v7, v0, Lads_mobile_sdk/yx2;->p:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 1847
    :try_start_c
    iget-object v13, v0, Lads_mobile_sdk/yx2;->q:Lcom/google/gson/Gson;

    const-class v14, Lcom/google/gson/JsonObject;

    invoke-virtual {v13, v7, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonObject;

    .line 1848
    const-string v13, "request_id"

    invoke-virtual {v7, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    goto :goto_4

    :catch_0
    :cond_1
    move-object v7, v12

    .line 1849
    :goto_4
    :try_start_d
    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v7, :cond_4

    .line 1857
    iget-object v7, v0, Lads_mobile_sdk/yx2;->o:Lads_mobile_sdk/p70;

    iget-object v13, v0, Lads_mobile_sdk/yx2;->p:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lads_mobile_sdk/p70;->a(Ljava/lang/String;)Lads_mobile_sdk/v01;

    move-result-object v7

    .line 2093
    instance-of v13, v7, Lads_mobile_sdk/i01;

    if-eqz v13, :cond_3

    check-cast v7, Lads_mobile_sdk/i01;

    .line 2094
    sget-object v1, Lads_mobile_sdk/yx2;->x:Lads_mobile_sdk/m01;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput v4, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v0, v1, v8}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    if-ne v0, v2, :cond_2

    goto/16 :goto_1b

    :cond_2
    move-object v2, v5

    move-object v3, v2

    .line 2095
    :goto_5
    :try_start_e
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lads_mobile_sdk/yx2;->x:Lads_mobile_sdk/m01;

    invoke-direct {v0, v1, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_1d

    .line 2330
    :cond_3
    :try_start_f
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/q01;

    .line 2331
    iget-object v7, v7, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 2332
    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2333
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2338
    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2339
    iput-object v13, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2340
    iput-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2572
    :cond_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 2573
    iget-object v4, v4, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 2574
    iget-object v4, v4, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 2575
    iget-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lads_mobile_sdk/n03;->d:Ljava/lang/String;

    .line 2579
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2580
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2581
    iget-object v13, v0, Lads_mobile_sdk/yx2;->t:Lkotlinx/coroutines/sync/Mutex;

    .line 2811
    iput-object v0, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v6, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v7, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v13, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    iput-object v4, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v14, 0x2

    iput v14, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-interface {v13, v12, v8}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    if-ne v14, v2, :cond_5

    goto/16 :goto_1b

    :cond_5
    move-object v15, v0

    move-object v0, v4

    move-object v4, v7

    move-object v7, v1

    move-object v1, v3

    move-object v3, v13

    move-object v13, v5

    move-object v5, v6

    move-object v6, v13

    .line 2812
    :goto_6
    :try_start_10
    iget-object v14, v15, Lads_mobile_sdk/yx2;->n:Lads_mobile_sdk/yf3;

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iput-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v6, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v13, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v7, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v4, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 p0, v0

    const/4 v0, 0x3

    iput v0, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v14, v12, v8}, Lads_mobile_sdk/yf3;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-ne v0, v2, :cond_6

    goto/16 :goto_1b

    :cond_6
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v14, v6

    move-object v6, v4

    move-object/from16 v4, p0

    goto/16 :goto_2

    .line 2813
    :goto_7
    :try_start_11
    check-cast v1, Lads_mobile_sdk/tf3;

    if-nez v1, :cond_8

    .line 2847
    sget-object v0, Lads_mobile_sdk/yx2;->w:Lads_mobile_sdk/m01;

    iput-object v14, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v1, 0x4

    iput v1, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v15, v0, v8}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-ne v0, v2, :cond_7

    goto/16 :goto_1b

    :cond_7
    move-object v2, v3

    move-object v3, v5

    move-object v4, v14

    .line 2848
    :goto_8
    :try_start_12
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lads_mobile_sdk/yx2;->w:Lads_mobile_sdk/m01;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v5, 0x0

    :goto_9
    move-object v6, v4

    goto/16 :goto_12

    .line 3079
    :cond_8
    :try_start_13
    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3308
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 3309
    iget-object v1, v1, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 3310
    iget-object v1, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 3311
    iget-object v13, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v13, :cond_9

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_a

    .line 3312
    :cond_9
    check-cast v13, Lads_mobile_sdk/tf3;

    :goto_a
    iget-object v13, v13, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v13

    iput-object v13, v1, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 3540
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 3541
    iget-object v1, v1, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 3542
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 3543
    iget-object v13, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v13, :cond_a

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_b

    .line 3544
    :cond_a
    check-cast v13, Lads_mobile_sdk/tf3;

    :goto_b
    iget-object v13, v13, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_b

    const-string v13, ""

    .line 3545
    :cond_b
    iput-object v13, v1, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 3549
    iget-boolean v1, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_f

    .line 3550
    iget-object v1, v15, Lads_mobile_sdk/yx2;->o:Lads_mobile_sdk/p70;

    .line 3551
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v13, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v13, :cond_c

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_c

    .line 3552
    :cond_c
    check-cast v13, Lads_mobile_sdk/tf3;

    :goto_c
    invoke-virtual {v1, v0, v7, v13}, Lads_mobile_sdk/p70;->a(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tf3;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 3772
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_e

    check-cast v0, Lads_mobile_sdk/i01;

    .line 3773
    iput-object v14, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v1, 0x5

    iput v1, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v15, v0, v8}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-ne v1, v2, :cond_d

    goto/16 :goto_1b

    :cond_d
    move-object v6, v14

    .line 3774
    :goto_d
    :try_start_14
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 3986
    :try_start_15
    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-object v2, v5

    :goto_e
    move-object v3, v6

    goto/16 :goto_1d

    :catchall_7
    move-exception v0

    goto/16 :goto_13

    .line 3992
    :cond_e
    :try_start_16
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 3993
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 3994
    check-cast v0, Ljava/lang/String;

    goto :goto_f

    .line 3995
    :cond_f
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3996
    :goto_f
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 4008
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4009
    :cond_10
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/yx2;->a(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4010
    iget-object v7, v15, Lads_mobile_sdk/yx2;->n:Lads_mobile_sdk/yf3;

    iget-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iput-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v14, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v6, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v4, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move-object/from16 p0, v3

    const/4 v3, 0x0

    :try_start_17
    iput-object v3, v8, Lads_mobile_sdk/vx2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v0, v8, Lads_mobile_sdk/vx2;->j:I

    const/4 v3, 0x6

    iput v3, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v7, v13, v1, v8}, Lads_mobile_sdk/yf3;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-ne v3, v2, :cond_11

    goto/16 :goto_1b

    :cond_11
    move-object v13, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v12

    move-object/from16 v12, p0

    goto/16 :goto_1

    .line 4011
    :goto_10
    :try_start_18
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4012
    sget-object v0, Lads_mobile_sdk/yx2;->u:Lads_mobile_sdk/m01;

    iput-object v15, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v13, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v12, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v4, v0, v8}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-ne v0, v2, :cond_12

    goto/16 :goto_1b

    :cond_12
    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    .line 4013
    :goto_11
    :try_start_19
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lads_mobile_sdk/yx2;->u:Lads_mobile_sdk/m01;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_9

    .line 3078
    :goto_12
    :try_start_1a
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move-object v2, v3

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    move-object v5, v3

    goto/16 :goto_21

    :goto_13
    const/4 v1, 0x0

    goto/16 :goto_20

    .line 4016
    :cond_13
    :try_start_1b
    iget-object v1, v4, Lads_mobile_sdk/yx2;->n:Lads_mobile_sdk/yf3;

    .line 4017
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 4019
    iget-object v6, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v6, :cond_14

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_14

    .line 4020
    :cond_14
    check-cast v6, Lads_mobile_sdk/tf3;

    .line 4021
    :goto_14
    iput-object v4, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v15, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v13, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v14, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    move-object/from16 p0, v1

    const/4 v1, 0x0

    iput-object v1, v8, Lads_mobile_sdk/vx2;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->h:Ljava/lang/Object;

    const/16 v1, 0x8

    iput v1, v8, Lads_mobile_sdk/vx2;->m:I

    move-object v1, v4

    move-object v4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/yf3;->a(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tf3;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    if-ne v3, v2, :cond_15

    goto/16 :goto_1b

    :cond_15
    move-object v7, v1

    move-object v3, v12

    move-object v5, v13

    move-object v4, v14

    move-object v6, v15

    .line 4027
    :goto_15
    :try_start_1c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    const/4 v1, 0x0

    .line 4221
    :try_start_1d
    invoke-interface {v3, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4222
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_16

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_16

    .line 4223
    :cond_16
    check-cast v1, Ljava/lang/String;

    :goto_16
    iput-object v7, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v6, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v4, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v7, v1, v8}, Lads_mobile_sdk/yx2;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_17

    goto :goto_1b

    :cond_17
    move-object v3, v0

    .line 4224
    :goto_17
    check-cast v1, Lads_mobile_sdk/v01;

    .line 4497
    instance-of v12, v1, Lads_mobile_sdk/i01;

    if-eqz v12, :cond_19

    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 4498
    iput-object v6, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    iput-object v0, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    const/16 v1, 0xa

    iput v1, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v7, v0, v8}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-ne v1, v2, :cond_18

    goto :goto_1b

    :cond_18
    move-object v2, v5

    move-object v3, v6

    .line 4499
    :goto_18
    :try_start_1e
    new-instance v1, Lkotlin/Pair;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1d

    .line 4697
    :cond_19
    :try_start_1f
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 4698
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 4699
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4706
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_1a

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_19

    .line 4707
    :cond_1a
    check-cast v0, Ljava/lang/String;

    .line 4708
    :goto_19
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_1b

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1a

    .line 4709
    :cond_1b
    check-cast v1, Lads_mobile_sdk/tf3;

    .line 4710
    :goto_1a
    iput-object v6, v8, Lads_mobile_sdk/vx2;->a:Ljava/lang/Object;

    iput-object v5, v8, Lads_mobile_sdk/vx2;->b:Ljava/io/Closeable;

    const/4 v3, 0x0

    iput-object v3, v8, Lads_mobile_sdk/vx2;->c:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->d:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->e:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/vx2;->f:Ljava/lang/Object;

    const/16 v3, 0xb

    iput v3, v8, Lads_mobile_sdk/vx2;->m:I

    invoke-virtual {v7, v0, v1, v8}, Lads_mobile_sdk/yx2;->a(Ljava/lang/String;Lads_mobile_sdk/tf3;Lads_mobile_sdk/vx2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-ne v1, v2, :cond_1c

    :goto_1b
    return-object v2

    :cond_1c
    move-object v2, v5

    move-object v3, v6

    .line 4711
    :goto_1c
    :try_start_20
    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 4907
    :goto_1d
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1d

    .line 4908
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 4909
    invoke-static {v1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :cond_1d
    const/4 v1, 0x0

    .line 4910
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_1e
    move-object v5, v2

    move-object v6, v3

    goto :goto_21

    :catchall_9
    move-exception v0

    move-object v3, v12

    move-object v5, v13

    move-object v6, v15

    goto/16 :goto_13

    :catchall_a
    move-exception v0

    goto :goto_1f

    :catchall_b
    move-exception v0

    move-object/from16 p0, v3

    :goto_1f
    move-object/from16 v3, p0

    move-object v6, v14

    goto/16 :goto_13

    :catchall_c
    move-exception v0

    move-object v5, v13

    goto/16 :goto_13

    .line 4926
    :goto_20
    :try_start_21
    invoke-interface {v3, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :catchall_d
    move-exception v0

    move-object v6, v5

    .line 4941
    :goto_21
    :try_start_22
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4945
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_22

    .line 4947
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1e

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1e

    .line 4953
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4959
    :cond_1e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_21

    .line 4960
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_20

    .line 4961
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1f

    throw v0

    .line 4962
    :cond_1f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4963
    :cond_20
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 4964
    :cond_21
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 4965
    :cond_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :catchall_e
    move-exception v0

    move-object v1, v0

    .line 4966
    :try_start_23
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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

.method public static a(Ljava/lang/String;)Lkotlin/Pair;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5665
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 5666
    const-string v2, "render_id"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5672
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v2, "decode(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p0, 0x1

    new-array v4, p0, [C

    const/16 v2, 0x3a

    aput-char v2, v4, v1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5674
    new-instance v3, Lkotlin/Pair;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 5676
    :cond_2
    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 5679
    :catch_0
    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 5680
    :catch_1
    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/tx2;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/tx2;

    iget v3, v2, Lads_mobile_sdk/tx2;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/tx2;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/tx2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/tx2;-><init>(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/tx2;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 258
    iget v4, v2, Lads_mobile_sdk/tx2;->i:I

    const-string v5, "key"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget v4, v2, Lads_mobile_sdk/tx2;->f:I

    iget v8, v2, Lads_mobile_sdk/tx2;->e:I

    iget-object v9, v2, Lads_mobile_sdk/tx2;->d:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/tx2;->c:Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/tx2;->b:Lads_mobile_sdk/f81;

    iget-object v12, v2, Lads_mobile_sdk/tx2;->a:Lads_mobile_sdk/yx2;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v8

    move-object v8, v2

    move/from16 v2, v17

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    iget-object v0, v1, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    const/4 v4, 0x3

    .line 262
    const-string v8, "gads:gbid_type_two_serving_fetch_retries"

    invoke-static {v0, v8, v5, v4}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 263
    sget-object v9, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v8, v4, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 264
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v9, p1

    move v4, v0

    move-object v0, v1

    move-object v12, v2

    move v2, v6

    :goto_1
    add-int/2addr v2, v7

    .line 269
    sget-object v8, Lads_mobile_sdk/s11;->H0:Lads_mobile_sdk/s11;

    .line 424
    sget-object v10, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v10, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v14

    .line 425
    :try_start_1
    iget-object v8, v0, Lads_mobile_sdk/yx2;->r:Lads_mobile_sdk/e01;

    .line 426
    iget-object v10, v0, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    .line 427
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    const-string v11, "gads:gbid_type_two_serving_fetch_timeout:millis"

    sget-object v13, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v13, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v15, 0x3c

    invoke-static {v15, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-static/range {v15 .. v16}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v13

    sget-object v15, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v10, v11, v13, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/time/Duration;

    invoke-virtual {v10}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v10

    .line 430
    invoke-static {v10, v11}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v10

    iput-object v0, v12, Lads_mobile_sdk/tx2;->a:Lads_mobile_sdk/yx2;

    iput-object v9, v12, Lads_mobile_sdk/tx2;->b:Lads_mobile_sdk/f81;

    iput-object v14, v12, Lads_mobile_sdk/tx2;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v12, Lads_mobile_sdk/tx2;->d:Lads_mobile_sdk/rr3;

    iput v2, v12, Lads_mobile_sdk/tx2;->e:I

    iput v4, v12, Lads_mobile_sdk/tx2;->f:I

    iput v7, v12, Lads_mobile_sdk/tx2;->i:I

    const/4 v11, 0x0

    const/16 v13, 0x1c

    invoke-static/range {v8 .. v13}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v8, v3, :cond_3

    return-object v3

    :cond_3
    move-object v10, v12

    move-object v12, v0

    move-object v0, v8

    move-object v8, v10

    move-object v11, v9

    move-object v9, v14

    move-object v10, v9

    .line 431
    :goto_2
    :try_start_2
    check-cast v0, Lads_mobile_sdk/v01;

    .line 591
    instance-of v13, v0, Lads_mobile_sdk/i01;

    if-eqz v13, :cond_4

    .line 592
    move-object v13, v0

    check-cast v13, Lads_mobile_sdk/i01;

    .line 593
    invoke-static {v13, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v10, 0x0

    .line 594
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 595
    instance-of v9, v0, Lads_mobile_sdk/q01;

    if-nez v9, :cond_7

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_5
    if-lt v2, v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v11

    move-object v0, v12

    move-object v12, v8

    goto :goto_1

    :cond_7
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    move-object v9, v14

    move-object v10, v9

    .line 758
    :goto_4
    :try_start_3
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 762
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 764
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 770
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 776
    :cond_8
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 777
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 778
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v0

    .line 779
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 780
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 781
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 782
    :cond_c
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 783
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1376
    instance-of v0, p2, Lads_mobile_sdk/ux2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ux2;

    iget v1, v0, Lads_mobile_sdk/ux2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ux2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ux2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ux2;-><init>(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/ux2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1465
    iget v2, v0, Lads_mobile_sdk/ux2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/ux2;->b:Lads_mobile_sdk/i01;

    iget-object v2, v0, Lads_mobile_sdk/ux2;->a:Lads_mobile_sdk/yx2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 1466
    invoke-static {p1, p2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 1467
    iget-object p2, p0, Lads_mobile_sdk/px2;->k:Lads_mobile_sdk/md1;

    .line 1468
    iput-object p0, v0, Lads_mobile_sdk/ux2;->a:Lads_mobile_sdk/yx2;

    iput-object p1, v0, Lads_mobile_sdk/ux2;->b:Lads_mobile_sdk/i01;

    iput v4, v0, Lads_mobile_sdk/ux2;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1469
    invoke-static {p2, v0}, Lads_mobile_sdk/md1;->b(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 1470
    :goto_1
    iget-object p2, v2, Lads_mobile_sdk/px2;->k:Lads_mobile_sdk/md1;

    .line 1471
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 1474
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1476
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1477
    invoke-direct/range {v4 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 1478
    iput-object v2, v0, Lads_mobile_sdk/ux2;->a:Lads_mobile_sdk/yx2;

    iput-object v2, v0, Lads_mobile_sdk/ux2;->b:Lads_mobile_sdk/i01;

    iput v3, v0, Lads_mobile_sdk/ux2;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1479
    invoke-static {p2, p1, v4, v0}, Lads_mobile_sdk/md1;->a(Lads_mobile_sdk/md1;Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 1480
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;Lads_mobile_sdk/tf3;Lads_mobile_sdk/vx2;)Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 4967
    instance-of v0, p2, Lads_mobile_sdk/wx2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/wx2;

    iget v1, v0, Lads_mobile_sdk/wx2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wx2;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/wx2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/wx2;-><init>(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/wx2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5165
    iget v2, v0, Lads_mobile_sdk/wx2;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/wx2;->c:Ljava/util/List;

    iget-object v1, v0, Lads_mobile_sdk/wx2;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wx2;->a:Lads_mobile_sdk/yx2;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    .line 5166
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5169
    :try_start_1
    iget-object p2, p0, Lads_mobile_sdk/yx2;->q:Lcom/google/gson/Gson;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5177
    :try_start_2
    const-string v2, "fetch_url"

    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_4

    .line 5178
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 5179
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lads_mobile_sdk/yx2;->a(Lcom/google/gson/JsonObject;)Ljava/util/List;

    move-result-object p2

    .line 5182
    new-instance v2, Lads_mobile_sdk/e81;

    invoke-direct {v2}, Lads_mobile_sdk/e81;-><init>()V

    .line 5183
    iget-object v6, p0, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    .line 5184
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5185
    const-string v7, "gads:gbid_type_two_serving_post:enabled"

    .line 5186
    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5202
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "url"

    if-eqz v6, :cond_6

    .line 5203
    :try_start_3
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "?"

    const/4 v12, 0x0

    aput-object v7, v6, v12

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 5204
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 5205
    new-instance v5, Ljava/net/URL;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5206
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5253
    iput-object v5, v2, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    .line 5254
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "getBytes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "text/plain"

    invoke-virtual {v2, v6, v5}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    goto :goto_2

    .line 5256
    :cond_5
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5257
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5304
    iput-object v6, v2, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    goto :goto_2

    .line 5305
    :cond_6
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5306
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5353
    iput-object v6, v2, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    .line 5354
    :goto_2
    invoke-virtual {v2}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v2

    .line 5357
    iput-object p0, v0, Lads_mobile_sdk/wx2;->a:Lads_mobile_sdk/yx2;

    iput-object p1, v0, Lads_mobile_sdk/wx2;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/wx2;->c:Ljava/util/List;

    iput v3, v0, Lads_mobile_sdk/wx2;->f:I

    invoke-virtual {p0, v2, v0}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    .line 5358
    :goto_3
    check-cast p2, Lads_mobile_sdk/v01;

    .line 5389
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_8

    .line 5390
    iget-object v5, v0, Lads_mobile_sdk/px2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 5391
    new-instance v1, Lads_mobile_sdk/xx2;

    invoke-direct {v1, v0, p2, p1, v4}, Lads_mobile_sdk/xx2;-><init>(Lads_mobile_sdk/yx2;Lads_mobile_sdk/v01;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 5392
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5393
    const-string p1, "<this>"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5651
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object p2

    .line 5652
    :cond_8
    instance-of p1, p2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_a

    .line 5653
    new-instance p1, Lads_mobile_sdk/q01;

    check-cast p2, Lads_mobile_sdk/q01;

    .line 5654
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 5655
    check-cast p2, Lads_mobile_sdk/h81;

    .line 5656
    iget-object p2, p2, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p2, :cond_9

    .line 5657
    invoke-static {p2}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v1

    .line 5658
    :cond_9
    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 5659
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5663
    :goto_4
    new-instance p2, Lads_mobile_sdk/j01;

    const/4 v0, 0x6

    invoke-direct {p2, p1, v4, v4, v0}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object p2

    .line 5664
    :catch_1
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/google/gson/JsonObject;)Ljava/util/List;
    .locals 4

    .line 1031
    :try_start_0
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v0, "settings"

    .line 1032
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1035
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/yx2;->q:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string v0, "nofill_urls"

    invoke-static {p1, v0}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1203
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1204
    :cond_1
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 1205
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1206
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAsString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return-object v0

    .line 1375
    :catchall_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
