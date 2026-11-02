.class public final Lads_mobile_sdk/f51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/h51;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/g83;

.field public final d:Lads_mobile_sdk/cw2;

.field public final e:Lads_mobile_sdk/l43;

.field public final f:Landroid/content/Context;

.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lkotlinx/coroutines/CoroutineScope;

.field public final i:Lads_mobile_sdk/o21;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h51;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/xf0;Lads_mobile_sdk/l43;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/o21;)V
    .locals 1

    .line 1
    const-string v0, "afmaMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "h5FullscreenAdComponentProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    .line 6
    iput-object p2, p0, Lads_mobile_sdk/f51;->b:Lads_mobile_sdk/ex0;

    .line 7
    iput-object p3, p0, Lads_mobile_sdk/f51;->c:Lads_mobile_sdk/g83;

    .line 8
    iput-object p4, p0, Lads_mobile_sdk/f51;->d:Lads_mobile_sdk/cw2;

    .line 9
    iput-object p5, p0, Lads_mobile_sdk/f51;->e:Lads_mobile_sdk/l43;

    .line 10
    iput-object p6, p0, Lads_mobile_sdk/f51;->f:Landroid/content/Context;

    .line 11
    iput-object p7, p0, Lads_mobile_sdk/f51;->g:Lkotlinx/coroutines/CoroutineScope;

    .line 12
    iput-object p8, p0, Lads_mobile_sdk/f51;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    iput-object p9, p0, Lads_mobile_sdk/f51;->i:Lads_mobile_sdk/o21;

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/f51;)Lads_mobile_sdk/o21;
    .locals 0

    .line 75
    iget-object p0, p0, Lads_mobile_sdk/f51;->i:Lads_mobile_sdk/o21;

    return-object p0
.end method

.method public static final synthetic a(JLads_mobile_sdk/f51;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/f51;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/f51;J)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/f51;->a(J)V

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/f51;Ljava/util/Map;JLjava/lang/String;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/f51;->a(Ljava/util/Map;JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/f51;Ljava/util/Map;JLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/f51;->a(Ljava/util/Map;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic b(Lads_mobile_sdk/f51;)Lads_mobile_sdk/g83;
    .locals 0

    .line 25
    iget-object p0, p0, Lads_mobile_sdk/f51;->c:Lads_mobile_sdk/g83;

    return-object p0
.end method

.method public static final c(Lads_mobile_sdk/f51;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    iget-object p0, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "eventCategory"

    const-string v2, "initialize"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 219
    iget-object v0, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/a51;

    .line 345
    invoke-interface {v2}, Lads_mobile_sdk/a51;->dispose()V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 347
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 349
    monitor-exit v0

    throw v1
.end method

.method public final a(J)V
    .locals 3

    .line 647
    iget-object v0, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/a51;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not dispose H5 ad, object ID does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void

    .line 652
    :cond_0
    invoke-interface {v1}, Lads_mobile_sdk/a51;->dispose()V

    .line 653
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisposeH5 ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 654
    monitor-exit v0

    throw p1
.end method

.method public final a(JLjava/lang/String;)V
    .locals 6

    .line 1241
    iget-object v1, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/a51;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v0, :cond_1

    .line 1243
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not show H5 ad, object ID does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 1244
    const-string v0, "show_interstitial_ad"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1245
    iget-object p3, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/h51;->a(J)V

    return-void

    .line 1247
    :cond_0
    iget-object p3, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/h51;->d(J)V

    return-void

    :cond_1
    move-object p1, v0

    .line 1251
    iget-object v0, p0, Lads_mobile_sdk/f51;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/e51;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/e51;-><init>(Lads_mobile_sdk/a51;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1252
    monitor-exit v1

    throw p1
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;)V
    .locals 3

    .line 851
    iget-object v0, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/a51;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_1

    .line 853
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not load H5 ad, object ID does not exist: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 854
    const-string p1, "load_interstitial_ad"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/h51;->a(J)V

    return-void

    .line 857
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/h51;->d(J)V

    return-void

    .line 864
    :cond_1
    invoke-interface {v1}, Lads_mobile_sdk/a51;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    .line 865
    iget-object p3, p0, Lads_mobile_sdk/f51;->f:Landroid/content/Context;

    .line 866
    iget-object p4, p0, Lads_mobile_sdk/f51;->e:Lads_mobile_sdk/l43;

    invoke-virtual {p4}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object p4

    .line 867
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/r51;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Lads_mobile_sdk/s51;

    move-result-object p1

    .line 873
    iget-object p2, p1, Lads_mobile_sdk/s51;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lads_mobile_sdk/f51;->e:Lads_mobile_sdk/l43;

    invoke-virtual {p3, p2}, Lads_mobile_sdk/l43;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    .line 874
    :cond_2
    invoke-interface {v1, p1}, Lads_mobile_sdk/a51;->a(Lads_mobile_sdk/s51;)V

    return-void

    :catchall_0
    move-exception p1

    .line 875
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/Map;JLkotlin/jvm/functions/Function2;)V
    .locals 4

    const-string v0, "Could not create h5 ad, object ID already exists: "

    .line 501
    iget-object v1, p0, Lads_mobile_sdk/f51;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lads_mobile_sdk/f51;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->W()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 503
    const-string p1, "Could not create H5 ad, too many existing objects"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 506
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :cond_1
    const-string v0, "ad_unit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 515
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/a51;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 516
    iget-object v0, p0, Lads_mobile_sdk/f51;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 517
    :cond_3
    :goto_0
    const-string p1, "Could not create H5 ad, missing ad unit"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 p1, 0x0

    .line 518
    :goto_2
    monitor-exit v1

    if-nez p1, :cond_4

    .line 537
    iget-object p1, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/h51;->c(J)V

    return-void

    .line 539
    :cond_4
    sget-object p4, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-interface {p1}, Lads_mobile_sdk/a51;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Created H5 ad "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " with ad unit "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lads_mobile_sdk/f51;->a:Lads_mobile_sdk/h51;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/h51;->b(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 541
    monitor-exit v1

    throw p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 876
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lads_mobile_sdk/f51;->b:Lads_mobile_sdk/ex0;

    const/16 v2, 0x1388

    .line 1014
    const-string v3, "key"

    const-string v4, "gads:h5ads:max_gmsg_length"

    invoke-static {v1, v4, v3, v2}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 1015
    sget-object v3, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1016
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "H5 GMSG exceeds max length"

    const/4 v0, 0x0

    .line 1017
    invoke-static {p1, v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 1018
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1019
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileads.google.com"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/h5ads"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method
