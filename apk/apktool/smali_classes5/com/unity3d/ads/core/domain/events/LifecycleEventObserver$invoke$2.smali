.class final Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LifecycleEventObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2\n+ 2 LifecycleEventRequestKt.kt\ngatewayprotocol/v1/LifecycleEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,69:1\n10#2:70\n1#3:71\n1#3:73\n523#4:72\n*S KotlinDebug\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2\n*L\n45#1:70\n45#1:71\n51#1:73\n51#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "isActive",
        ""
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
    c = "com.unity3d.ads.core.domain.events.LifecycleEventObserver$invoke$2"
    f = "LifecycleEventObserver.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2e,
        0x36,
        0x37
    }
    m = "invokeSuspend"
    n = {
        "eventType",
        "$this$invokeSuspend_u24lambda_u240"
    }
    s = {
        "L$0",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

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

    new-instance v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    const-string v3, "newBuilder(...)"

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v5, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v8, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v8, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v9, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    iget-object v10, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v5

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->Z$0:Z

    if-eqz v2, :cond_4

    .line 41
    :try_start_3
    sget-object v2, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;->LIFECYCLE_EVENT_TYPE_FOREGROUND:Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    goto :goto_0

    .line 43
    :cond_4
    sget-object v2, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;->LIFECYCLE_EVENT_TYPE_BACKGROUND:Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    :goto_0
    move-object v10, v2

    .line 45
    iget-object v9, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    .line 70
    sget-object v2, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->newBuilder()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;)Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    move-result-object v2

    .line 46
    invoke-static {v9}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object v8

    iput-object v10, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    invoke-interface {v8, v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v8, v2

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    :goto_1
    check-cast v5, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-virtual {v2, v5}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 47
    invoke-static {v10}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v2

    invoke-virtual {v8, v2}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 48
    invoke-virtual {v8, v11}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setLifecycleEventType(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;)V

    .line 49
    invoke-static {v10}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetByteStringId$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetByteStringId;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity3d/ads/core/domain/GetByteStringId;->invoke()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v8, v2}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setEventId(Lcom/google/protobuf/ByteString;)V

    .line 70
    invoke-virtual {v9}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    move-result-object v2

    .line 51
    sget-object v5, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 72
    sget-object v5, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    .line 72
    invoke-virtual {v3}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v2

    .line 54
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    iput v6, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    invoke-interface {v3, v2, v5}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    .line 38
    :cond_6
    :goto_2
    move-object v10, v2

    check-cast v10, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 55
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v8

    .line 57
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v11

    .line 58
    sget-object v12, Lcom/unity3d/ads/core/data/model/OperationType;->LIFECYCLE_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/Continuation;

    .line 55
    iput v4, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v2, v1, :cond_7

    :goto_3
    return-object v1

    .line 62
    :catch_0
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getLogger$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v1

    const-string v2, "Failed to send lifecycle event, likely due to network issues. Event will be dropped."

    invoke-static {v1, v2, v7, v6, v7}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    :cond_7
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
