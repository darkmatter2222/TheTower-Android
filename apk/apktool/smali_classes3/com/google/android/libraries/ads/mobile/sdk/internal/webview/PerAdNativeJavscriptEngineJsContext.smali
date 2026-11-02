.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nr1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;",
        "Lads_mobile_sdk/nr1;",
        "",
        "Lads_mobile_sdk/r41;",
        "perAdGmsgHandlers",
        "Ljava/util/Set;",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/nr1;

.field private final b:Ljava/lang/String;

.field private final c:Lkotlinx/coroutines/sync/Mutex;

.field private final perAdGmsgHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lads_mobile_sdk/r41;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "jsContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 3
    instance-of v0, p3, Lads_mobile_sdk/kj2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/kj2;

    iget v1, v0, Lads_mobile_sdk/kj2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kj2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/kj2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/kj2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/kj2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 234
    iget v2, v0, Lads_mobile_sdk/kj2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iget-object v2, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iget-object v2, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    invoke-interface {p2}, Lads_mobile_sdk/r41;->k()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    .line 236
    :cond_5
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 282
    iput-object p0, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object p1, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object p3, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_7

    :cond_6
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    .line 283
    :goto_1
    :try_start_0
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :goto_2
    move-object p1, v2

    goto :goto_6

    :catchall_0
    move-exception p2

    .line 334
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    .line 335
    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    if-eqz p3, :cond_a

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_5

    .line 336
    :cond_8
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 391
    iput-object p0, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object p1, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object p3, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    .line 392
    :goto_4
    :try_start_1
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    invoke-interface {p2, p3}, Lads_mobile_sdk/r41;->a(Ljava/lang/String;)V

    .line 393
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 451
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_a
    :goto_5
    move-object v4, p0

    .line 452
    :goto_6
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, p1, p2, v0}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_7
    return-object v1

    .line 453
    :cond_b
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
