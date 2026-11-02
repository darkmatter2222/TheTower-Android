.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/unity3d/ads/adplayer/WebViewContainer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
        "container",
        "Lcom/unity3d/ads/adplayer/WebViewContainer;"
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
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$loadWebView$1"
    f = "AndroidHandleGatewayAdResponse.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xd6,
        0xd7
    }
    m = "invokeSuspend"
    n = {
        "bridge",
        "player",
        "bridge",
        "player"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

.field final synthetic $eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $eagerBase64ImpressionConfig:Ljava/lang/String;

.field final synthetic $response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $webViewUrl:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerBase64ImpressionConfig:Ljava/lang/String;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$webViewUrl:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerBase64ImpressionConfig:Ljava/lang/String;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$webViewUrl:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/unity3d/ads/adplayer/WebViewContainer;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->invoke(Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 200
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 201
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v5}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getGetWebViewBridge$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    move-result-object v5

    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v6}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getAdPlayerScope$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/adplayer/AdPlayerScope;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v5, v2, v6}, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;->invoke(Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v5

    .line 202
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v6}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getGetAdPlayer$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/GetAdPlayer;

    move-result-object v6

    iget-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    invoke-interface {v6, v5, v2, v7, v8}, Lcom/unity3d/ads/core/domain/GetAdPlayer;->invoke(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/WebViewContainer;Lcom/unity3d/ads/core/data/model/AdObject;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object v16

    .line 205
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v6}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    .line 206
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v6}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object v26

    .line 203
    iget-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const v27, 0xffbe

    const/16 v28, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v9 .. v28}, Lcom/unity3d/ads/core/data/model/AdObject;->copy$default(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v6

    move-object/from16 v7, v16

    .line 208
    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getGetHandleInvocationsFromAdViewer$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    move-result-object v8

    .line 209
    iget-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v9}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v9

    const-string v10, "getAdData(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v9, v10, v4, v11}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 210
    iget-object v12, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerBase64ImpressionConfig:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    iget-object v13, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v13}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v13

    const-string v14, "getAdDataRefreshToken(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v10, v4, v11}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-virtual {v8, v9, v10, v12, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unity3d/ads/adplayer/WebViewBridge;->setExposedFunctions(Ljava/util/Map;)V

    .line 214
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->$webViewUrl:Ljava/lang/String;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->label:I

    invoke-static {v6, v8, v9, v2, v10}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$loadUrl(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    move-object v2, v7

    .line 215
    :goto_0
    invoke-interface {v2}, Lcom/unity3d/ads/adplayer/AdPlayer;->getOnLoadEvent()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;->label:I

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->single(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v1, v2

    move-object v2, v4

    .line 200
    :goto_2
    check-cast v3, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    .line 216
    new-instance v4, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-direct {v4, v1, v2, v3}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;-><init>(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    return-object v4
.end method
