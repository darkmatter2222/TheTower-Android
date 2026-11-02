.class public final Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;
.super Ljava/lang/Object;
.source "AndroidCoherenceLibraryManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCoherenceLibraryManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCoherenceLibraryManager.kt\ncom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;",
        "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;",
        "context",
        "Landroid/content/Context;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "pipelineLock",
        "",
        "cachedPipeline",
        "Lcom/unity3d/coherence/CoherencePipeline;",
        "initializeLibrary",
        "",
        "getCommonAttributes",
        "",
        "eventId",
        "",
        "initialize",
        "wasmModule",
        "executeWasmData",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;

.field private static final PRODUCT_ID:I = 0x2


# instance fields
.field private final appContext:Landroid/content/Context;

.field private cachedPipeline:Lcom/unity3d/coherence/CoherencePipeline;

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final pipelineLock:Ljava/lang/Object;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->Companion:Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 20
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->appContext:Landroid/content/Context;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->pipelineLock:Ljava/lang/Object;

    return-void
.end method

.method private final initializeLibrary()V
    .locals 14

    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    new-instance v0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->setSource(I)Lcom/unity3d/coherence/CoherenceInitConfig$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->build()Lcom/unity3d/coherence/CoherenceInitConfig;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v1}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v1

    .line 40
    invoke-static {v0}, Lcom/unity3d/coherence/CoherenceLibrary;->init(Lcom/unity3d/coherence/CoherenceInitConfig;)V

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit p0

    .line 43
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 44
    const-string v4, "native_coherence_init_time"

    .line 45
    invoke-static {v1, v2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 43
    invoke-static/range {v3 .. v13}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public executeWasmData()[B
    .locals 15

    .line 103
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->pipelineLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->cachedPipeline:Lcom/unity3d/coherence/CoherencePipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    return-object v0

    .line 105
    :cond_0
    :try_start_1
    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    .line 107
    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lcom/unity3d/coherence/CoherencePipeline;->execute([B)[B

    move-result-object v0

    const-string v1, "execute(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    const-string v5, "native_coherence_execute_wasm_time"

    .line 110
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 108
    invoke-static/range {v4 .. v14}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "CoherenceLibrary WASM execution failed"

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v0

    .line 103
    monitor-exit v1

    throw v0
.end method

.method public getCommonAttributes(I)[B
    .locals 13

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initializeLibrary()V

    .line 52
    new-instance v0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;

    invoke-direct {v0}, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;-><init>()V

    const/4 v1, 0x2

    .line 53
    invoke-virtual {v0, v1}, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->setProductId(I)Lcom/unity3d/coherence/CommonAttributesConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->setEventId(I)Lcom/unity3d/coherence/CommonAttributesConfig$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->build()Lcom/unity3d/coherence/CommonAttributesConfig;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    .line 57
    invoke-static {}, Lcom/unity3d/coherence/CoherenceLibrary;->getInstance()Lcom/unity3d/coherence/CoherenceLibrary;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/unity3d/coherence/CoherenceLibrary;->getAttributesProvider()Lcom/unity3d/coherence/AttributesProvider;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/unity3d/coherence/AttributesProvider;->getCommonAttributes(Lcom/unity3d/coherence/CommonAttributesConfig;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 61
    const-string v3, "native_coherence_get_common_attributes_time"

    .line 62
    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 60
    invoke-static/range {v2 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "CoherenceLibrary fetching payload failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize([B)V
    .locals 14

    const-string v0, "wasmModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->initializeLibrary()V

    .line 75
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    .line 77
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->pipelineLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->cachedPipeline:Lcom/unity3d/coherence/CoherencePipeline;

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v3, p1}, Lcom/unity3d/coherence/CoherencePipeline;->load([B)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v3, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;

    invoke-direct {v3}, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;-><init>()V

    .line 83
    invoke-virtual {v3, p1}, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->setWasmBytes([B)Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;

    move-result-object p1

    const/4 v3, 0x1

    .line 86
    invoke-virtual {p1, v3}, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->setConcurrency(I)Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->build()Lcom/unity3d/coherence/CoherencePipelineConfig;

    move-result-object p1

    const-string v3, "build(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/unity3d/coherence/CoherenceLibrary;->getInstance()Lcom/unity3d/coherence/CoherenceLibrary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/coherence/CoherenceLibrary;->getCoherenceProvider()Lcom/unity3d/coherence/CoherenceProvider;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/unity3d/coherence/CoherenceProvider;->create(Lcom/unity3d/coherence/CoherencePipelineConfig;)Lcom/unity3d/coherence/CoherencePipeline;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->cachedPipeline:Lcom/unity3d/coherence/CoherencePipeline;

    .line 90
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    monitor-exit v2

    .line 91
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 92
    const-string v4, "native_coherence_warm_wasm_time"

    .line 93
    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 91
    invoke-static/range {v3 .. v13}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 77
    monitor-exit v2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 96
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/coherence/AndroidCoherenceLibraryManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "CoherenceLibrary WASM warm-up failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
