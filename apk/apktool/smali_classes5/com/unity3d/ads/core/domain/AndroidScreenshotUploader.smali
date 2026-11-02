.class public final Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;
.super Ljava/lang/Object;
.source "AndroidScreenshotUploader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ&\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0086B\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
        "",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "httpClientProvider",
        "Lcom/unity3d/ads/core/domain/HttpClientProvider;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/HttpClientProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;)V",
        "invoke",
        "",
        "id",
        "",
        "bytes",
        "",
        "contentType",
        "(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

.field public static final SCREENSHOT_PATH:Ljava/lang/String; = "adviewer/screenshots"

.field public static final SESSION_TOKEN_HEADER:Ljava/lang/String; = "uads_session_token"

.field private static final UPLOAD_TIMEOUT_MS:I = 0x2710


# instance fields
.field private final httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->Companion:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/HttpClientProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

    .line 25
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 26
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getHttpClientProvider$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/domain/HttpClientProvider;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
