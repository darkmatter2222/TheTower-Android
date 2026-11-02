.class final Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidScreenshotUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2"
    f = "AndroidScreenshotUploader.kt"
    i = {
        0x0
    }
    l = {
        0x32,
        0x32
    }
    m = "invokeSuspend"
    n = {
        "request"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $bytes:[B

.field final synthetic $contentType:Ljava/lang/String;

.field final synthetic $id:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "adviewer/screenshots/"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget v3, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/services/core/network/model/HttpRequest;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    :try_start_2
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 31
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 35
    new-instance v6, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 36
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v7}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v7

    invoke-interface {v7}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGatewayUrl()Ljava/lang/String;

    move-result-object v7

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 38
    sget-object v9, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 39
    iget-object v10, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    .line 41
    new-array v0, v5, [Lkotlin/Pair;

    const-string v11, "Content-Type"

    iget-object v12, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v0, v12

    .line 42
    const-string v11, "uads_session_token"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v4

    .line 40
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    .line 44
    iget-object v14, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    const v25, 0x3e360

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2710

    const/16 v18, 0x2710

    const/16 v19, 0x2710

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 35
    invoke-direct/range {v6 .. v26}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getHttpClientProvider$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/domain/HttpClientProvider;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    invoke-interface {v0, v3}, Lcom/unity3d/ads/core/domain/HttpClientProvider;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_0
    move-object v6, v0

    check-cast v6, Lcom/unity3d/services/core/network/core/HttpClient;

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/unity3d/services/core/network/core/HttpClient$DefaultImpls;->execute$default(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/services/core/network/model/HttpRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    return-object v0

    .line 52
    :goto_2
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Screenshot upload failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
