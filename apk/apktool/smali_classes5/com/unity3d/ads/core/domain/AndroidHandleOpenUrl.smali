.class public final Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;
.super Ljava/lang/Object;
.source "AndroidHandleOpenUrl.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/HandleOpenUrl;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidHandleOpenUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleOpenUrl.kt\ncom/unity3d/ads/core/domain/AndroidHandleOpenUrl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,56:1\n1#2:57\n17#3:58\n19#3:62\n46#4:59\n51#4:61\n105#5:60\n*S KotlinDebug\n*F\n+ 1 AndroidHandleOpenUrl.kt\ncom/unity3d/ads/core/domain/AndroidHandleOpenUrl\n*L\n50#1:58\n50#1:62\n50#1:59\n50#1:61\n50#1:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JR\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\tH\u0096B\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;",
        "Lcom/unity3d/ads/core/domain/HandleOpenUrl;",
        "context",
        "Landroid/content/Context;",
        "intentCreation",
        "Lcom/unity3d/ads/core/domain/IntentCreation;",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/domain/IntentCreation;)V",
        "invoke",
        "",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "url",
        "",
        "packageName",
        "action",
        "extras",
        "",
        "",
        "useActivityForResult",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentCreation:Lcom/unity3d/ads/core/domain/IntentCreation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/domain/IntentCreation;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentCreation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;->intentCreation:Lcom/unity3d/ads/core/domain/IntentCreation;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p7, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->label:I

    sub-int/2addr p7, v2

    iput p7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;

    invoke-direct {v0, p0, p7}, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;->intentCreation:Lcom/unity3d/ads/core/domain/IntentCreation;

    invoke-interface {p7, p2, p3, p4, p5}, Lcom/unity3d/ads/core/domain/IntentCreation;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p2

    .line 35
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    move-result-object p3

    sget-object p4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    if-ne p3, p4, :cond_3

    const/high16 p1, 0x10000000

    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_3

    .line 40
    :cond_3
    sget-object p3, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;

    invoke-virtual {p3}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;->getDisplayMessages()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/flow/SharedFlow;

    new-instance p4, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$result$1;

    const/4 p5, 0x0

    invoke-direct {p4, p1, p2, p6, p5}, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$result$1;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->onSubscription(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 60
    new-instance p3, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$$inlined$filter$1;

    invoke-direct {p3, p2, p1}, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/unity3d/ads/core/data/model/AdObject;)V

    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    .line 52
    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleOpenUrl$invoke$1;->label:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p7

    if-ne p7, v1, :cond_4

    return-object v1

    .line 40
    :cond_4
    :goto_2
    const-string p1, "null cannot be cast to non-null type com.unity3d.ads.adplayer.DisplayMessage.OpenUrlResult"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p7, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;

    .line 53
    invoke-virtual {p7}, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;->getSuccess()Z

    move-result p1

    :goto_3
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
