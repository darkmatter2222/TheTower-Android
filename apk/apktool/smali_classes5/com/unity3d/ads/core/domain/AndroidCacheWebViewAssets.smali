.class public final Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;
.super Ljava/lang/Object;
.source "AndroidCacheWebViewAssets.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/CacheWebViewAssets;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCacheWebViewAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheWebViewAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheWebViewAssets\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1869#2,2:67\n774#2:69\n865#2,2:70\n1740#2,2:72\n1742#2:75\n1#3:74\n*S KotlinDebug\n*F\n+ 1 AndroidCacheWebViewAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheWebViewAssets\n*L\n40#1:67,2\n54#1:69\n54#1:70,2\n56#1:72,2\n56#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0096B\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;",
        "Lcom/unity3d/ads/core/domain/CacheWebViewAssets;",
        "cacheRepository",
        "Lcom/unity3d/ads/core/data/repository/CacheRepository;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/CacheRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V",
        "_cached",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Ljava/io/File;",
        "cached",
        "",
        "getCached",
        "()Ljava/util/Map;",
        "invoke",
        "",
        "webviewConfiguration",
        "Lcom/unity3d/ads/core/data/model/WebViewConfiguration;",
        "forceDownload",
        "",
        "(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "warmFromDisk",
        "config",
        "(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFilename",
        "url",
        "type",
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
.field private final _cached:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/CacheRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1

    const-string v0, "cacheRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    .line 15
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 17
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->_cached:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final getFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v2}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v2, v3, v2}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCached()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->_cached:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public invoke(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/WebViewConfiguration;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->Z$0:Z

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->Z$0:Z

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object p3

    invoke-virtual {p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getShouldHandleWebviewCaching()Z

    move-result p3

    if-nez p3, :cond_4

    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :cond_4
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_6

    .line 33
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->Z$0:Z

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    invoke-interface {p3, v2, v5, p2, v0}, Lcom/unity3d/ads/core/data/repository/CacheRepository;->getWebviewFile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    :goto_1
    check-cast p3, Lcom/unity3d/ads/core/data/model/CacheResult;

    .line 34
    instance-of v2, p3, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    if-eqz v2, :cond_6

    check-cast p3, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 35
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->getFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->_cached:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-interface {v4, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_6
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getAdditionalFiles()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 67
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v4, p1

    move p1, p2

    move-object v2, p3

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 41
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_7

    .line 42
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->L$2:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->Z$0:Z

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$invoke$1;->label:I

    invoke-interface {p3, p2, v5, p1, v0}, Lcom/unity3d/ads/core/data/repository/CacheRepository;->getWebviewFile(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_3
    return-object v1

    .line 27
    :cond_8
    :goto_4
    check-cast p3, Lcom/unity3d/ads/core/data/model/CacheResult;

    .line 43
    instance-of v5, p3, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    if-eqz v5, :cond_7

    check-cast p3, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 44
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->getFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->_cached:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 49
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public warmFromDisk(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/WebViewConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object p2

    invoke-virtual {p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getShouldHandleWebviewCaching()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_7

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getAdditionalFiles()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 70
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 54
    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 70
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_5
    check-cast v5, Ljava/util/List;

    .line 69
    check-cast v5, Ljava/lang/Iterable;

    .line 54
    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 56
    check-cast p2, Ljava/lang/Iterable;

    .line 72
    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_7

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v3, v4

    goto :goto_6

    .line 73
    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->cacheRepository:Lcom/unity3d/ads/core/data/repository/CacheRepository;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v6

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets$warmFromDisk$1;->label:I

    invoke-interface {v5, p2, v6, v0}, Lcom/unity3d/ads/core/data/repository/CacheRepository;->getWebviewFileFromDisk(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v5

    move-object v5, p1

    move-object p1, p2

    move-object p2, v8

    :goto_3
    instance-of v6, p2, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    check-cast p2, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    goto :goto_4

    :cond_9
    move-object p2, v7

    :goto_4
    if-eqz p2, :cond_a

    .line 58
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    move-result-object p2

    goto :goto_5

    :cond_a
    move-object p2, v7

    :goto_5
    if-eqz p2, :cond_b

    .line 59
    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->_cached:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/unity3d/ads/core/domain/AndroidCacheWebViewAssets;->getFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p2

    :cond_b
    if-eqz v7, :cond_c

    move-object p1, v5

    goto :goto_2

    .line 75
    :cond_c
    :goto_6
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 52
    :cond_d
    :goto_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
