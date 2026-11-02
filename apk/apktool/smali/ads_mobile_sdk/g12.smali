.class public final Lads_mobile_sdk/g12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Lads_mobile_sdk/v42;

.field public final d:Lads_mobile_sdk/g52;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/v42;Lads_mobile_sdk/g52;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAssetsLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCustomAssetsLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lads_mobile_sdk/g12;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lads_mobile_sdk/g12;->b:Lkotlin/coroutines/CoroutineContext;

    .line 54
    iput-object p3, p0, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 55
    iput-object p4, p0, Lads_mobile_sdk/g12;->d:Lads_mobile_sdk/g52;

    .line 56
    iput-object p5, p0, Lads_mobile_sdk/g12;->e:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 57
    iput-object p6, p0, Lads_mobile_sdk/g12;->f:Lads_mobile_sdk/ex0;

    .line 58
    iput-object p7, p0, Lads_mobile_sdk/g12;->g:Lads_mobile_sdk/ur3;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/g12;Lads_mobile_sdk/s02;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    instance-of v0, p3, Lads_mobile_sdk/e12;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/e12;

    iget v1, v0, Lads_mobile_sdk/e12;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/e12;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/e12;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/e12;-><init>(Lads_mobile_sdk/g12;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/e12;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 261
    iget v2, v0, Lads_mobile_sdk/e12;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/e12;->b:Lads_mobile_sdk/rr3;

    iget-object p1, v0, Lads_mobile_sdk/e12;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    sget-object p3, Lads_mobile_sdk/s11;->C1:Lads_mobile_sdk/s11;

    .line 361
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p3, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p3

    .line 362
    :try_start_1
    invoke-virtual {p2}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_5

    .line 366
    :try_start_2
    iget-object p0, p0, Lads_mobile_sdk/g12;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {p0}, Lads_mobile_sdk/ex0;->Y()J

    move-result-wide v5

    new-instance p0, Lads_mobile_sdk/f12;

    invoke-direct {p0, p2, p1, v4}, Lads_mobile_sdk/f12;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V

    iput-object p3, v0, Lads_mobile_sdk/e12;->a:Lads_mobile_sdk/rr3;

    iput-object p3, v0, Lads_mobile_sdk/e12;->b:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/e12;->e:I

    invoke-static {v5, v6, p0, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p3

    move-object p1, p0

    .line 384
    :goto_1
    :try_start_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 462
    instance-of p3, p2, Lads_mobile_sdk/i01;

    if-eqz p3, :cond_4

    .line 463
    move-object p3, p2

    check-cast p3, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 464
    invoke-static {p3, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    :cond_4
    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p3

    move-object p1, p0

    .line 466
    :goto_2
    :try_start_4
    new-instance p3, Lads_mobile_sdk/w01;

    .line 467
    new-instance v0, Lads_mobile_sdk/j01;

    .line 469
    sget-object v1, Lads_mobile_sdk/kk1;->j:Lads_mobile_sdk/kk1;

    .line 470
    const-string v2, "Immersive video media data timed out."

    .line 471
    invoke-direct {v0, p2, v1, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;)V

    .line 472
    invoke-direct {p3, v0}, Lads_mobile_sdk/w01;-><init>(Lads_mobile_sdk/i01;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    move-object p3, p1

    goto :goto_4

    .line 473
    :cond_5
    :try_start_5
    new-instance p0, Lads_mobile_sdk/w01;

    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Video controller is null."

    .line 474
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 475
    invoke-direct {p1, p2, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 476
    invoke-direct {p0, p1}, Lads_mobile_sdk/w01;-><init>(Lads_mobile_sdk/i01;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p0, p3

    .line 580
    :goto_4
    :try_start_6
    invoke-virtual {p3, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 584
    instance-of p1, p2, Lads_mobile_sdk/v24;

    if-nez p1, :cond_a

    .line 586
    instance-of p1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_6

    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    .line 592
    invoke-virtual {p3, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 598
    :cond_6
    instance-of p1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_9

    .line 599
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    .line 600
    instance-of p1, p2, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_7

    throw p2

    .line 601
    :cond_7
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 602
    :cond_8
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 603
    :cond_9
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 604
    :cond_a
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 605
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lads_mobile_sdk/s02;Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;
    .locals 4

    .line 1286
    const-string v0, "extra_response_info"

    invoke-static {p4, v0}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1290
    :try_start_0
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1291
    iput-object v0, p2, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1294
    iget-object v1, p0, Lads_mobile_sdk/g12;->g:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    const-string v2, "Failed to parse extra_response_info"

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1298
    :cond_0
    :goto_0
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v0, "template_id"

    const/4 v1, -0x1

    invoke-static {p4, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v0

    .line 1299
    iput v0, p2, Lads_mobile_sdk/s02;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 1304
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Invalid native ad template id!"

    invoke-direct {p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1305
    :cond_1
    sget-object v0, Lads_mobile_sdk/q02;->a:Lads_mobile_sdk/q02;

    iput-object v0, p2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    goto :goto_1

    .line 1307
    :cond_2
    sget-object v0, Lads_mobile_sdk/q02;->b:Lads_mobile_sdk/q02;

    iput-object v0, p2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    .line 1311
    :goto_1
    const-string v0, "custom_template_id"

    invoke-virtual {p4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    .line 1313
    iget-object v2, p2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    sget-object v3, Lads_mobile_sdk/q02;->b:Lads_mobile_sdk/q02;

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    .line 1316
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "No custom template id for custom template ad response."

    invoke-direct {p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1319
    :cond_4
    const-string v0, "rating"

    const-string v2, "-1.0"

    invoke-static {p4, v0, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p2, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    .line 1321
    const-string v0, "headline"

    invoke-virtual {p4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1322
    :cond_5
    iget-boolean p3, p3, Lads_mobile_sdk/i2;->d0:Z

    if-eqz p3, :cond_6

    .line 1323
    sget p3, Lads_mobile_sdk/zn3;->a:I

    invoke-static {p1}, Lads_mobile_sdk/yn3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 1325
    iget-object p1, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_7
    const-string p1, "body"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :cond_8
    const-string p1, "call_to_action"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 1328
    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_9
    const-string p1, "store"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_a
    const-string p1, "price"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_b
    const-string p1, "advertiser"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 1333
    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    :cond_c
    const-string p1, "creative_summary"

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 1336
    iget-object v0, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_d
    const-string p1, "app_id"

    invoke-static {p4, p1}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_e

    .line 1341
    iget-object p3, p2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string p4, "package_name"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    :cond_e
    iget-object p1, p0, Lads_mobile_sdk/g12;->e:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object p1

    iput-object p1, p2, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 1346
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 606
    instance-of v0, p4, Lads_mobile_sdk/t02;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/t02;

    iget v1, v0, Lads_mobile_sdk/t02;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t02;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/t02;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/t02;-><init>(Lads_mobile_sdk/g12;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lads_mobile_sdk/t02;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 665
    iget v2, v0, Lads_mobile_sdk/t02;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/t02;->b:Lads_mobile_sdk/rr3;

    iget-object p2, v0, Lads_mobile_sdk/t02;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    .line 666
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 671
    sget-object p4, Lads_mobile_sdk/s11;->o0:Lads_mobile_sdk/s11;

    .line 879
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p4, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p4

    .line 880
    :try_start_1
    iput-object p4, v0, Lads_mobile_sdk/t02;->a:Lads_mobile_sdk/rr3;

    iput-object p4, v0, Lads_mobile_sdk/t02;->b:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/t02;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lads_mobile_sdk/g12;->b(Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p4

    move-object p4, p1

    move-object p1, p2

    .line 881
    :goto_1
    :try_start_2
    check-cast p4, Lads_mobile_sdk/v01;

    .line 1094
    instance-of p3, p4, Lads_mobile_sdk/i01;

    if-eqz p3, :cond_4

    .line 1095
    move-object p3, p4

    check-cast p3, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 1096
    invoke-static {p3, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 p2, 0x0

    .line 1097
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p4

    :goto_2
    move-object p4, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p3, p1

    move-object p1, p4

    .line 1105
    :goto_3
    :try_start_3
    invoke-virtual {p4, p3}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1109
    instance-of p2, p3, Lads_mobile_sdk/v24;

    if-nez p2, :cond_9

    .line 1111
    instance-of p2, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_5

    instance-of p2, p3, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5

    .line 1117
    invoke-virtual {p4, p3}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1123
    :cond_5
    instance-of p2, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_8

    .line 1124
    instance-of p2, p3, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_7

    .line 1125
    instance-of p2, p3, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_6

    throw p3

    .line 1126
    :cond_6
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p3}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1127
    :cond_7
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p3, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p3}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 1128
    :cond_8
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p3, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p3}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 1129
    :cond_9
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    .line 1130
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final b(Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p4, Lads_mobile_sdk/u02;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/u02;

    iget v1, v0, Lads_mobile_sdk/u02;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u02;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/u02;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/u02;-><init>(Lads_mobile_sdk/g12;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lads_mobile_sdk/u02;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 69
    iget v2, v0, Lads_mobile_sdk/u02;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/u02;->a:Lads_mobile_sdk/s02;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lads_mobile_sdk/w01; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    new-instance v6, Lads_mobile_sdk/s02;

    invoke-direct {v6}, Lads_mobile_sdk/s02;-><init>()V

    .line 76
    iget-object p4, p0, Lads_mobile_sdk/g12;->a:Landroid/content/Context;

    invoke-virtual {p0, p4, v6, p1, p2}, Lads_mobile_sdk/g12;->a(Landroid/content/Context;Lads_mobile_sdk/s02;Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;

    move-result-object p1

    .line 310
    instance-of p4, p1, Lads_mobile_sdk/i01;

    if-eqz p4, :cond_3

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 311
    :cond_3
    const-string p4, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 312
    :try_start_1
    new-instance v4, Lads_mobile_sdk/d12;

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p2

    move-object v5, p3

    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/d12;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lads_mobile_sdk/u02;->a:Lads_mobile_sdk/s02;

    iput v3, v0, Lads_mobile_sdk/u02;->d:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lads_mobile_sdk/w01; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, v6

    .line 379
    :goto_1
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 380
    iget-object p1, p1, Lads_mobile_sdk/w01;->a:Lads_mobile_sdk/i01;

    return-object p1
.end method
