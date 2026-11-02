.class final Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MaxAdRevenueListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->onMessageReceived(Landroid/os/Bundle;)V
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
    c = "com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2"
    f = "MaxAdRevenueListener.kt"
    i = {
        0x0
    }
    l = {
        0x2d
    }
    m = "invokeSuspend"
    n = {
        "adRevenueData"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $messageData:Landroid/os/Bundle;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "Ad revenue event sent: revenue="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    :try_start_1
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    invoke-static {p1, v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$parseRevenueBundle(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 45
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getHandleAdRevenueEvent$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    move-result-object v2

    .line 47
    sget-object v6, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 48
    sget-object v7, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 45
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->label:I

    invoke-virtual {v2, p1, v6, v7, v8}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, p1

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getRevenue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", network="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, v3, v5}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object p1

    const-string v0, "Failed to parse revenue event"

    invoke-static {p1, v0, v5, v3, v5}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v0

    const-string v1, "Failed to process ad revenue event"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
