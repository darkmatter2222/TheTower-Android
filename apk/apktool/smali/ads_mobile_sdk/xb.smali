.class public final Lads_mobile_sdk/xb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nt3;


# instance fields
.field public final a:Lads_mobile_sdk/jb3;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/tf3;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final e:Lcom/google/gson/Gson;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/ej1;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jb3;Ljava/lang/String;Lads_mobile_sdk/tf3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ej1;)V
    .locals 1

    .line 1
    const-string v0, "javascriptEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseBlob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalGenerationData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/xb;->a:Lads_mobile_sdk/jb3;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/xb;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lads_mobile_sdk/xb;->c:Lads_mobile_sdk/tf3;

    .line 35
    iput-object p4, p0, Lads_mobile_sdk/xb;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 36
    iput-object p5, p0, Lads_mobile_sdk/xb;->e:Lcom/google/gson/Gson;

    .line 37
    iput-object p6, p0, Lads_mobile_sdk/xb;->f:Lads_mobile_sdk/ex0;

    .line 38
    iput-object p7, p0, Lads_mobile_sdk/xb;->g:Lads_mobile_sdk/ej1;

    .line 42
    invoke-virtual {p6}, Lads_mobile_sdk/ex0;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p3, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object p1

    .line 44
    sget-object p2, Lads_mobile_sdk/x11;->k:Lads_mobile_sdk/x11;

    if-ne p1, p2, :cond_0

    .line 46
    iget-object p1, p3, Lads_mobile_sdk/tf3;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "https://pubads.g.doubleclick.net/gampad/ads?gsig="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    const-string p1, ""

    .line 49
    :goto_0
    iput-object p1, p0, Lads_mobile_sdk/xb;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/JsonObject;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5
    iget-object v3, p0, Lads_mobile_sdk/xb;->h:Ljava/lang/String;

    const-string v4, "ad_request_url"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v3, "ad_request_post_body"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v3, "base_url"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lads_mobile_sdk/xb;->e:Lcom/google/gson/Gson;

    iget-object v4, p0, Lads_mobile_sdk/xb;->c:Lads_mobile_sdk/tf3;

    iget-object v4, v4, Lads_mobile_sdk/tf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "signals"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 10
    iget-object v3, p0, Lads_mobile_sdk/xb;->b:Ljava/lang/String;

    const-string v4, "body"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "headers"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 13
    const-string v3, "request"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 14
    const-string v1, "response"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 15
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    instance-of v1, p1, Lads_mobile_sdk/wb;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/wb;

    iget v2, v1, Lads_mobile_sdk/wb;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/wb;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/wb;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/wb;-><init>(Lads_mobile_sdk/xb;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v1, Lads_mobile_sdk/wb;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51
    iget v3, v1, Lads_mobile_sdk/wb;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v0, v1, Lads_mobile_sdk/wb;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ec3;

    iget-object v2, v1, Lads_mobile_sdk/wb;->b:Ljava/io/Closeable;

    iget-object v1, v1, Lads_mobile_sdk/wb;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, v1, Lads_mobile_sdk/wb;->c:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v6, v1, Lads_mobile_sdk/wb;->b:Ljava/io/Closeable;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/wb;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/xb;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    .line 53
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    sget-object p1, Lads_mobile_sdk/s11;->I:Lads_mobile_sdk/s11;

    .line 110
    sget-object v3, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 111
    :try_start_2
    invoke-virtual {p0}, Lads_mobile_sdk/xb;->a()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 113
    iget-object v8, p0, Lads_mobile_sdk/xb;->a:Lads_mobile_sdk/jb3;

    const-string v9, "google.afma.response.normalize"

    iput-object p0, v1, Lads_mobile_sdk/wb;->a:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/wb;->b:Ljava/io/Closeable;

    iput-object v3, v1, Lads_mobile_sdk/wb;->c:Ljava/lang/Object;

    iput v6, v1, Lads_mobile_sdk/wb;->f:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "toString(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/rp0;

    invoke-virtual {v8, v9, p1, v1}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v2, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v8, p0

    move-object v6, v3

    .line 115
    :goto_1
    :try_start_3
    check-cast p1, Lads_mobile_sdk/v01;

    .line 178
    instance-of v9, p1, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_5

    check-cast p1, Lads_mobile_sdk/i01;

    goto :goto_3

    .line 179
    :cond_5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 180
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 181
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 186
    iget-object v9, v8, Lads_mobile_sdk/xb;->f:Lads_mobile_sdk/ex0;

    .line 187
    const-string v10, "json"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v10, Lads_mobile_sdk/zb3;

    invoke-direct {v10, v9, p1, v7}, Lads_mobile_sdk/zb3;-><init>(Lads_mobile_sdk/ex0;Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)V

    .line 189
    const-string p1, "block"

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :try_start_4
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-virtual {v10}, Lads_mobile_sdk/zb3;->invoke()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p1, v9}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 317
    :try_start_5
    new-instance v9, Lads_mobile_sdk/j01;

    const/4 v10, 0x6

    invoke-direct {v9, p1, v7, v7, v10}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p1, v9

    .line 318
    :goto_2
    nop

    instance-of v9, p1, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_6

    check-cast p1, Lads_mobile_sdk/i01;

    :goto_3
    move-object v2, v3

    move-object v1, v6

    goto :goto_6

    .line 319
    :cond_6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 320
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 321
    check-cast p1, Lads_mobile_sdk/ac3;

    .line 379
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 380
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 381
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 382
    iget-object v9, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v9, v9, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v9, v0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 384
    new-instance v0, Lads_mobile_sdk/ec3;

    new-instance v9, Lads_mobile_sdk/wb3;

    iget-object v10, v8, Lads_mobile_sdk/xb;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-direct {v9, v10}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    .line 385
    invoke-direct {v0, v9, p1, v4, v7}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;ZLads_mobile_sdk/om2;)V

    .line 386
    iget-object p1, v8, Lads_mobile_sdk/xb;->g:Lads_mobile_sdk/ej1;

    iput-object v6, v1, Lads_mobile_sdk/wb;->a:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/wb;->b:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/wb;->c:Ljava/lang/Object;

    iput v5, v1, Lads_mobile_sdk/wb;->f:I

    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/ej1;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v2, :cond_7

    :goto_4
    return-object v2

    :cond_7
    move-object v2, v3

    move-object v1, v6

    .line 387
    :goto_5
    :try_start_6
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 440
    :goto_6
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_8

    .line 441
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 442
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 443
    :cond_8
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_7
    move-object v6, v1

    move-object v3, v2

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object v6, v3

    .line 457
    :goto_8
    :try_start_7
    invoke-virtual {v6, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 461
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_d

    .line 463
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_9

    .line 469
    invoke-virtual {v6, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 475
    :cond_9
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_c

    .line 476
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_b

    .line 477
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_a

    throw p1

    .line 478
    :cond_a
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 479
    :cond_b
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 480
    :cond_c
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 481
    :cond_d
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 482
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
