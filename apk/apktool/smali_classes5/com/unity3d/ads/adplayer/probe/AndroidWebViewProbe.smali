.class public final Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;
.super Ljava/lang/Object;
.source "AndroidWebViewProbe.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/probe/WebViewProbe;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\u000e\u0010\u000f\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;",
        "Lcom/unity3d/ads/adplayer/probe/WebViewProbe;",
        "context",
        "Landroid/content/Context;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "sdkScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "ioDispatcher",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "invoke",
        "",
        "runProbe",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final sdkScope:Lkotlinx/coroutines/CoroutineScope;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 31
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->sdkScope:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    iput-object p5, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method public static final synthetic access$runProbe(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->runProbe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final runProbe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;-><init>(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "WVProbe"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/webkit/WebView;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView;

    iget-object v4, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    iget-wide v8, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->J$0:J

    iget-object v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView;

    iget-object v6, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v7, v2

    goto/16 :goto_8

    :catch_1
    move-exception p1

    move-object v4, v6

    goto/16 :goto_4

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    invoke-static {v7, v6, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 42
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 44
    sget-object v8, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v8}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v8

    .line 47
    :try_start_3
    new-instance v10, Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    new-instance v11, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$2$1;

    invoke-direct {v11, p1}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$2$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v10, v11, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v11, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$2$2;

    invoke-direct {v11, v2, p1}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$2$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v11, Landroid/webkit/WebViewClient;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    :try_start_4
    const-string v11, "<html><script>if(1+1===2){WVProbe.onSuccess();}</script></html>"

    .line 84
    const-string v12, "text/html"

    .line 85
    const-string v13, "UTF-8"

    .line 82
    invoke-virtual {v10, v11, v12, v13}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v11, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$completed$1;

    invoke-direct {v11, p1, v7}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$completed$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$1:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->J$0:J

    iput v6, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    const-wide/16 v12, 0x1388

    invoke-static {v12, v13, v11, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v6, v2

    move-object v2, v10

    .line 40
    :goto_1
    :try_start_5
    check-cast p1, Lkotlin/Unit;

    if-eqz p1, :cond_6

    .line 89
    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v8

    goto :goto_2

    :cond_6
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 90
    :goto_2
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$3;

    invoke-direct {v10, p0, v8, v9, v7}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$3;-><init>(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;DLkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    invoke-static {p1, v10, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p1, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 105
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_8
    if-eqz v2, :cond_c

    .line 106
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v7, v10

    goto :goto_8

    :catch_2
    move-exception p1

    move-object v4, v2

    move-object v2, v10

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v4, v2

    move-object v2, v7

    .line 97
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, "unknown"

    .line 98
    :cond_9
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$4;

    invoke-direct {v6, p0, v4, v7}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$4;-><init>(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$runProbe$1;->label:I

    invoke-static {p1, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne p1, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    move-object v7, v2

    :goto_6
    if-eqz v7, :cond_b

    .line 105
    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_b
    if-eqz v7, :cond_c

    .line 106
    invoke-virtual {v7}, Landroid/webkit/WebView;->destroy()V

    .line 108
    :cond_c
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_8
    if-eqz v7, :cond_d

    .line 105
    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_d
    if-eqz v7, :cond_e

    .line 106
    invoke-virtual {v7}, Landroid/webkit/WebView;->destroy()V

    :cond_e
    throw p1
.end method


# virtual methods
.method public invoke()V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->sdkScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$invoke$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe$invoke$1;-><init>(Lcom/unity3d/ads/adplayer/probe/AndroidWebViewProbe;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
