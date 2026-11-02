.class public final Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;
.super Ljava/lang/Object;
.source "AndroidWarmNonInitSignals.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/WarmNonInitSignals;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0010\u001a\u00020\u0011H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;",
        "Lcom/unity3d/ads/core/domain/WarmNonInitSignals;",
        "warmUpScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "privacyDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V",
        "started",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "invoke",
        "",
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
.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final privacyDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final warmUpScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "warmUpScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDeviceInfoDataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->warmUpScope:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->privacyDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    .line 20
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 21
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getIoDispatcher$p(Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getPrivacyDeviceInfoDataSource$p(Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->privacyDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method


# virtual methods
.method public invoke()V
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;->warmUpScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals$invoke$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidWarmNonInitSignals;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
