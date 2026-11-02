.class public final Lcom/unity3d/ads/core/domain/WebViewScreenCapture;
.super Ljava/lang/Object;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewScreenCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,166:1\n116#2,11:167\n*S KotlinDebug\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture\n*L\n118#1:167,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 .2\u00020\u0001:\u0001.BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J&\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010&J\u0016\u0010\'\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eH\u0082@\u00a2\u0006\u0002\u0010(J\u0016\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u00020-H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
        "",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "mainDispatcher",
        "viewCapturer",
        "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
        "uploader",
        "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
        "cacheTtlMs",
        "",
        "elapsedRealtimeMs",
        "Lkotlin/Function0;",
        "backgroundScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "cachedBitmap",
        "Landroid/graphics/Bitmap;",
        "cachedViewRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "cacheTimestamp",
        "evictionJob",
        "Lkotlinx/coroutines/Job;",
        "getBlackPixelPercentage",
        "",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "threshold",
        "",
        "(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "captureScreenshot",
        "",
        "quality",
        "samplingRate",
        "(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resolveTargetView",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOrCapture",
        "targetView",
        "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scheduleEviction",
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
.field public static final CACHE_TTL_MS:J = 0x7d0L

.field public static final Companion:Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

.field public static final DEFAULT_QUALITY:I = 0x32

.field public static final DEFAULT_SAMPLING_RATE:D = 1.0

.field public static final DEFAULT_THRESHOLD:I = 0xa

.field public static final PNG_QUALITY:I = 0x64


# instance fields
.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private cacheTimestamp:J

.field private final cacheTtlMs:J

.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private cachedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private evictionJob:Lkotlinx/coroutines/Job;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

.field private final viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;


# direct methods
.method public static synthetic $r8$lambda$SzMUtvbci23nevEmFTBOZi4k748()J
    .locals 2

    invoke-static {}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->Companion:Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCapturer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elapsedRealtimeMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    .line 34
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    .line 35
    iput-wide p5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J

    .line 36
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;

    .line 39
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 41
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$$ExternalSyntheticLambda0;-><init>()V

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 30
    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getCacheTtlMs$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J

    return-wide v0
.end method

.method public static final synthetic access$getMutex$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getOrCapture(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUploader$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    return-object p0
.end method

.method public static final synthetic access$resolveTargetView(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCachedBitmap$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setCachedViewRef$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->J$0:J

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 172
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 120
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 121
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    if-ne v4, p1, :cond_6

    iget-wide v8, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTimestamp:J

    sub-long v8, v6, v8

    iget-wide v10, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v4, v8, v10

    if-gez v4, :cond_6

    .line 176
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    .line 123
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->J$0:J

    iput v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v1, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v1

    move-wide v1, v6

    .line 118
    :goto_4
    :try_start_3
    move-object v3, p2

    check-cast v3, Landroid/graphics/Bitmap;

    .line 124
    iput-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 125
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    .line 126
    iput-wide v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTimestamp:J

    .line 127
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->scheduleEviction()V

    .line 123
    check-cast p2, Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method private final resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private final scheduleEviction()V
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->evictionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->evictionJob:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "ID",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    iget v2, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 66
    iget v3, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-wide v2, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iget v1, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iget v3, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    iget-object v9, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v14, v3

    move-object v3, v0

    move v0, v14

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    iput-object p0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    move/from16 v0, p2

    iput v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    move-wide/from16 v7, p3

    iput-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iput v5, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    move-object/from16 v3, p1

    invoke-direct {p0, v3, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p0

    :goto_1
    check-cast v3, Landroid/view/View;

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    iput v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    iput-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iput v4, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    invoke-direct {v9, v3, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v2, v1

    move v1, v0

    move-object v0, v2

    move-wide v2, v7

    .line 66
    :goto_3
    check-cast v0, Landroid/graphics/Bitmap;

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "toString(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x64

    if-lt v1, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    move v4, v5

    .line 70
    iget-object v9, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    move v5, v1

    move-wide v1, v2

    move-object v3, v0

    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;-><init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7
.end method

.method public final getBlackPixelPercentage(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iput v6, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p0

    :goto_1
    check-cast p3, Landroid/view/View;

    iput-object v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iput v5, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-direct {p1, p3, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_6
    move p1, p2

    .line 48
    :goto_2
    check-cast p3, Landroid/graphics/Bitmap;

    .line 50
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;

    invoke-direct {v2, p3, p1, v3}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;-><init>(Landroid/graphics/Bitmap;ILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p1
.end method
