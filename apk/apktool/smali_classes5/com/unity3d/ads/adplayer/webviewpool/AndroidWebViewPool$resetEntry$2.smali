.class final Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidWebViewPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->resetEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$2"
    f = "AndroidWebViewPool.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

.field final synthetic $resetClient:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$resetClient:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;

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

    new-instance p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$resetClient:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "webviewbridge"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$resetClient:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;->$entry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 94
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
