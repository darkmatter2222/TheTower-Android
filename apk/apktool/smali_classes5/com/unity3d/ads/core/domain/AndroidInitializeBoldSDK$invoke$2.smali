.class final Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidInitializeBoldSDK.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->invoke(Ljava/lang/String;Lkotlin/time/TimeMark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2"
    f = "AndroidInitializeBoldSDK.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x52,
        0x55,
        0x6f
    }
    m = "invokeSuspend"
    n = {
        "latencyOrigin",
        "useCaseEntry",
        "isRetry",
        "latencyOrigin",
        "useCaseEntry",
        "isRetry"
    }
    s = {
        "L$0",
        "J$0",
        "I$0",
        "L$0",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $publicApiEntry:Lkotlin/time/TimeMark;

.field final synthetic $source:Ljava/lang/String;

.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;


# direct methods
.method constructor <init>(Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/TimeMark;",
            "Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$publicApiEntry:Lkotlin/time/TimeMark;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$source:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$publicApiEntry:Lkotlin/time/TimeMark;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$source:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;-><init>(Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->I$0:I

    iget-wide v8, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->J$0:J

    iget-object v5, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->L$0:Ljava/lang/Object;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v9, v8

    move-object v8, v5

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    iget v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->I$0:I

    iget-wide v8, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->J$0:J

    iget-object v10, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v8

    .line 79
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$publicApiEntry:Lkotlin/time/TimeMark;

    if-nez v2, :cond_4

    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v2

    .line 80
    :cond_4
    iget-object v10, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    invoke-static {v10}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v10

    invoke-interface {v10}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isFirstInitAttempt()Z

    move-result v10

    xor-int/2addr v10, v7

    .line 82
    iget-object v11, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    invoke-static {v11}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->access$getOptimisticInitializationManager$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;

    move-result-object v11

    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->L$0:Ljava/lang/Object;

    iput-wide v8, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->J$0:J

    iput v10, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->I$0:I

    iput v7, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->label:I

    invoke-interface {v11, v12}, Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v10

    move-object v10, v2

    move/from16 v2, v16

    .line 85
    :goto_0
    :try_start_1
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v11, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/32 v12, 0x1d4c0

    invoke-static {v12, v13, v11}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    new-instance v13, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2$1;

    iget-object v14, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    iget-object v15, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$source:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v7, v6

    :goto_1
    invoke-direct {v13, v14, v15, v7, v3}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->L$0:Ljava/lang/Object;

    iput-wide v8, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->J$0:J

    iput v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->I$0:I

    iput v5, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->label:I

    invoke-static {v11, v12, v13, v7}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v0, :cond_7

    goto :goto_4

    :cond_7
    move-wide/from16 v16, v8

    move-object v8, v10

    move-wide/from16 v9, v16

    .line 111
    :goto_2
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    invoke-static {v9, v10}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v9

    iget-object v10, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$source:Ljava/lang/String;

    if-eqz v2, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    move v11, v6

    :goto_3
    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->label:I

    invoke-static/range {v7 .. v12}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->access$initializationSuccess(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lkotlin/time/TimeMark;Lkotlin/time/TimeMark;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_9

    :goto_4
    return-object v0

    .line 112
    :cond_9
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_1
    move-exception v0

    move-object v5, v10

    .line 103
    :goto_6
    sget-object v3, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->Companion:Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;

    invoke-virtual {v3, v0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;->parseFrom(Ljava/lang/Exception;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    move-result-object v3

    .line 104
    instance-of v0, v0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    if-eqz v0, :cond_a

    .line 105
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setShouldInitialize(Z)V

    .line 107
    :cond_a
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    iget-object v4, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;->$source:Ljava/lang/String;

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    :cond_b
    invoke-static {v0, v5, v3, v4, v6}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->access$initializationFailure(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)V

    .line 108
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
