.class final Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionEventObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n523#2:76\n1#3:77\n*S KotlinDebug\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2\n*L\n43#1:76\n43#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "currentTransactionEventRequest",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;"
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
    c = "com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2"
    f = "TransactionEventObserver.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x2e,
        0x2f,
        0x37
    }
    m = "invokeSuspend"
    n = {
        "startTime",
        "fullRequest",
        "startTime",
        "startTime"
    }
    s = {
        "J$0",
        "L$0",
        "J$0",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->invoke(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    iget-object v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_2
    iget-wide v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    .line 41
    sget-object v6, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v6}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v6

    .line 43
    :try_start_3
    sget-object v8, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 76
    sget-object v8, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object v9

    const-string v10, "newBuilder(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    move-result-object v8

    .line 44
    invoke-virtual {v8, v2}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V

    .line 76
    invoke-virtual {v8}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v2

    .line 46
    iget-object v8, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v8}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    move-result-object v8

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-wide v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    iput v5, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->label:I

    invoke-interface {v8, v2, v9}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    goto :goto_2

    .line 40
    :cond_4
    :goto_0
    move-object v10, v2

    check-cast v10, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 47
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v8

    .line 49
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v11

    .line 50
    sget-object v12, Lcom/unity3d/ads/core/data/model/OperationType;->TRANSACTION_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    .line 47
    iput-object v10, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-wide v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    iput v4, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->label:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    goto :goto_2

    .line 40
    :cond_5
    :goto_1
    check-cast v2, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 52
    invoke-virtual {v2}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 55
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getIapTransactionStore$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object v2

    invoke-virtual {v10}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;->getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v8

    invoke-virtual {v8}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getTimestamps()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v8

    invoke-virtual {v8}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Timestamp;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    const-string v9, "toByteString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-wide v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->J$0:J

    iput v3, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->label:I

    invoke-interface {v2, v8, v9}, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;->set(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v2, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-wide v2, v6

    .line 57
    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v6

    .line 58
    sget-object v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_TRANSACTION_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 59
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 57
    invoke-static/range {v6 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V
    :try_end_4
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide v2, v6

    .line 64
    :goto_4
    iget-object v6, v1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    invoke-static {v6}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v7

    .line 65
    sget-object v8, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_TRANSACTION_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 66
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v9

    .line 68
    new-array v2, v4, [Lkotlin/Pair;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 69
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v0, "reason_debug"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v5

    .line 67
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    const/16 v16, 0xf8

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 64
    invoke-static/range {v7 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 73
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
