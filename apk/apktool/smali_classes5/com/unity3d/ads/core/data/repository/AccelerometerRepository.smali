.class public final Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;
.super Ljava/lang/Object;
.source "AccelerometerRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccelerometerRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000_\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0002*\u0001\u0018\u0018\u0000 (2\u00020\u0001:\u0001(B1\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u0013H\u0002J\u0015\u0010\"\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u0013H\u0001\u00a2\u0006\u0002\u0008#J\u0015\u0010$\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u0013H\u0001\u00a2\u0006\u0002\u0008%J\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00130\'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0010\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "nanoTimeProvider",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V",
        "running",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "maxSamples",
        "",
        "buffer",
        "Ljava/util/ArrayDeque;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
        "samplingIntervalNanos",
        "lastAcceptedNanos",
        "Ljava/lang/Long;",
        "sensorListener",
        "com/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1",
        "Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;",
        "start",
        "",
        "stop",
        "shouldAccept",
        "",
        "nowNanos",
        "record",
        "sample",
        "recordSampleForTest",
        "recordSampleForTest$unity_ads_defaultRelease",
        "recordThrottledSampleForTest",
        "recordThrottledSampleForTest$unity_ads_defaultRelease",
        "drainSamples",
        "",
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
.field public static final Companion:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

.field public static final DEFAULT_MAX_SAMPLES:I = 0x32

.field public static final DEFAULT_SAMPLING_INTERVAL_MS:I = 0x64

.field private static final NANOS_PER_MS:J = 0xf4240L


# instance fields
.field private final buffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private lastAcceptedNanos:Ljava/lang/Long;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private maxSamples:I

.field private final nanoTimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private samplingIntervalNanos:J

.field private final sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public static synthetic $r8$lambda$yWxIdQRTKW8CxGL6skq2mTWhaIc()J
    .locals 2

    invoke-static {}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->Companion:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
            "Lcom/unity3d/ads/core/log/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 29
    iput-object p3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x32

    .line 34
    iput p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    .line 35
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    const-wide/32 p1, 0x5f5e100

    .line 39
    iput-wide p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J

    .line 42
    new-instance p1, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;-><init>(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 30
    new-instance p4, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$$ExternalSyntheticLambda0;-><init>()V

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getNanoTimeProvider$p(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$record(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method

.method public static final synthetic access$shouldAccept(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;J)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->shouldAccept(J)Z

    move-result p0

    return p0
.end method

.method private final record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 133
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    if-lt v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 137
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final shouldAccept(J)Z
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final drainSamples()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final recordSampleForTest$unity_ads_defaultRelease(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 1

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method

.method public final recordThrottledSampleForTest$unity_ads_defaultRelease(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 2

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->shouldAccept(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 8

    .line 60
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;

    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    monitor-exit v0

    .line 69
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isNativeConfigReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v2

    invoke-virtual {v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getCollectAccelerometer()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 74
    :cond_2
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getSamplingIntervalMs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_4
    const/16 v2, 0x64

    .line 77
    :goto_1
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getMaxSamples()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    const/16 v0, 0x32

    .line 80
    :goto_3
    iget-object v3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 81
    :try_start_1
    iput v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    .line 82
    iput-wide v4, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J

    .line 83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit v3

    .line 85
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/hardware/SensorManager;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/hardware/SensorManager;

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    const/4 v3, 0x2

    if-nez v0, :cond_8

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: SENSOR_SERVICE unavailable"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_8
    const/4 v4, 0x1

    .line 90
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: TYPE_ACCELEROMETER sensor unavailable"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_9
    mul-int/lit16 v2, v2, 0x3e8

    const/4 v5, 0x0

    .line 97
    :try_start_2
    iget-object v6, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    check-cast v6, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v6, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 102
    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v4, "AccelerometerRepository: registerListener denied"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v4, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 99
    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v4, "AccelerometerRepository: registerListener rejected arguments"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v4, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_5
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v5, :cond_a

    .line 106
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: registerListener failed"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    .line 80
    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method public final stop()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/SensorManager;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: unregisterListener rejected arguments"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
