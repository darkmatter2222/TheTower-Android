.class public Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;
.super Lads_mobile_sdk/ci1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;",
        "Lads_mobile_sdk/ci1;",
        "Ljava/util/Optional;",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;",
        "jsEngineContext",
        "Ljava/util/Optional;",
        "localJsEngineContext",
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;",
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
.field private final jsEngineContext:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;",
            ">;"
        }
    .end annotation
.end field

.field private localJsEngineContext:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

.field private final n:Lkotlinx/coroutines/CoroutineScope;

.field private final o:Lads_mobile_sdk/s02;

.field private final p:Lads_mobile_sdk/j12;

.field private final q:Lads_mobile_sdk/t32;

.field private final r:Lads_mobile_sdk/b42;

.field private final s:Lads_mobile_sdk/hl1;

.field private final t:Lcom/google/gson/Gson;

.field private final u:Lads_mobile_sdk/ur3;

.field private final v:Lads_mobile_sdk/ex0;

.field private final w:Lads_mobile_sdk/nr3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/s02;Lads_mobile_sdk/j12;Lads_mobile_sdk/t32;Lads_mobile_sdk/b42;Lads_mobile_sdk/hl1;Ljava/util/Optional;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lcom/google/gson/Gson;Lads_mobile_sdk/ur3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/nr3;)V
    .locals 16

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p14

    move-object/from16 v3, p17

    move-object/from16 v4, p18

    move-object/from16 v5, p20

    .line 1
    const-string v6, "uiScope"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adId"

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adConfiguration"

    move-object/from16 v8, p3

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "commonConfiguration"

    move-object/from16 v9, p4

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceMetaSet"

    move-object/from16 v10, p5

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "webView"

    move-object/from16 v11, p6

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adEventEmitter"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "delegatingAdListener"

    move-object/from16 v7, p8

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdAssets"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdCore"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdViewPopulator"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdViewabilityTracker"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "internalMediaContent"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "jsEngineContext"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "phantomReferences"

    move-object/from16 v0, p15

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "safeBrowsingManager"

    move-object/from16 v0, p16

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "gson"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceLogger"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "placementIdWrapper"

    move-object/from16 v0, p19

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "flags"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "baseRequest"

    move-object/from16 v0, p21

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p2

    move-object/from16 v6, p7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p19

    move-object v11, v0

    move-object/from16 v0, p0

    .line 65
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/ci1;-><init>(Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lads_mobile_sdk/eo2;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    .line 66
    iput-object v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 74
    iput-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    .line 75
    iput-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    .line 76
    iput-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q:Lads_mobile_sdk/t32;

    move-object/from16 v1, p12

    .line 77
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r:Lads_mobile_sdk/b42;

    move-object/from16 v1, p13

    .line 78
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->s:Lads_mobile_sdk/hl1;

    move-object/from16 v2, p14

    .line 79
    iput-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->jsEngineContext:Ljava/util/Optional;

    move-object/from16 v3, p17

    .line 82
    iput-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->t:Lcom/google/gson/Gson;

    move-object/from16 v4, p18

    .line 83
    iput-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->u:Lads_mobile_sdk/ur3;

    move-object/from16 v5, p20

    .line 85
    iput-object v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->v:Lads_mobile_sdk/ex0;

    move-object/from16 v1, p22

    .line 87
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->w:Lads_mobile_sdk/nr3;

    .line 104
    invoke-static {v2}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->localJsEngineContext:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->jsEngineContext:Ljava/util/Optional;

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->localJsEngineContext:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 2
    invoke-super {p0, p1}, Lads_mobile_sdk/ci1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "clickData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/j12;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "mediaViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    sget-object v1, Lads_mobile_sdk/q02;->b:Lads_mobile_sdk/q02;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q:Lads_mobile_sdk/t32;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/t32;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->t:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->n:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/jm1;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lads_mobile_sdk/jm1;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->u:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "Failed to parse recordEvent data for Immersive"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, v1, Lads_mobile_sdk/j12;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_0
    invoke-virtual {v1, p1}, Lads_mobile_sdk/j12;->b(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "touchEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/j12;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lads_mobile_sdk/ci1;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0}, Lads_mobile_sdk/j12;->a()V

    return-void
.end method

.method public final g()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0}, Lads_mobile_sdk/j12;->l()V

    return-void
.end method

.method public final o()Lads_mobile_sdk/nr3;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->w:Lads_mobile_sdk/nr3;

    return-object v0
.end method

.method public final p()Lads_mobile_sdk/hl1;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->s:Lads_mobile_sdk/hl1;

    return-object v0
.end method

.method public final q()Lads_mobile_sdk/s02;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o:Lads_mobile_sdk/s02;

    return-object v0
.end method

.method public final r()Lads_mobile_sdk/j12;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    return-object v0
.end method

.method public final s()Lads_mobile_sdk/t32;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q:Lads_mobile_sdk/t32;

    return-object v0
.end method

.method public final t()Lads_mobile_sdk/b42;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r:Lads_mobile_sdk/b42;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0}, Lads_mobile_sdk/j12;->j()Z

    move-result v0

    return v0
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p:Lads_mobile_sdk/j12;

    invoke-virtual {v0}, Lads_mobile_sdk/j12;->k()Z

    return-void
.end method

.method public final w()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->v:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "key"

    const-string v2, "gads:native_ad_view:on_intercept_touch_event:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->n:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/im1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lads_mobile_sdk/im1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->v:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "key"

    const-string v2, "gads:report_touch_event_on_intercept_touch:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
