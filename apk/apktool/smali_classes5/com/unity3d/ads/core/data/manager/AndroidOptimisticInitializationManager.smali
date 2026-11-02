.class public final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;
.super Ljava/lang/Object;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0017H\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u000e\u0010\u001d\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;",
        "Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "triggerInitializeListener",
        "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "optimisticScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "staticDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/log/Logger;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "terminal",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timerJob",
        "Lkotlinx/coroutines/Job;",
        "tryOptimisticCompletion",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onInitializationFinished",
        "",
        "success",
        "sendOptimistic",
        "storeKey",
        "computeKey",
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
.field public static final Companion:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

.field private static final DIAGNOSTIC_EVENT:Ljava/lang/String; = "native_initialize_success_optimistically"

.field private static final KEY_LAST_SUCCESS:Ljava/lang/String; = "last_init_success"

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "unityads-optimistic-init"


# instance fields
.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final optimisticScope:Lkotlinx/coroutines/CoroutineScope;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

.field private final terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile timerJob:Lkotlinx/coroutines/Job;

.field private final triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->Companion:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/log/Logger;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerInitializeListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optimisticScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticDeviceInfoDataSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 27
    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 29
    iput-object p4, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iput-object p5, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    .line 31
    iput-object p6, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 32
    iput-object p7, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$sendOptimistic(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendOptimistic()V

    return-void
.end method

.method public static final synthetic access$storeKey(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final computeKey()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x3

    .line 117
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGameId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 118
    const-string v2, "4.21.0"

    aput-object v2, v0, v1

    .line 119
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;->getBundleVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 116
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 120
    const-string v0, "|"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final sendOptimistic()V
    .locals 12

    .line 95
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Optimistic init: timer fired, sending success callback"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;->success()V

    .line 99
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    const-string v2, "native_initialize_success_optimistically"

    const/16 v10, 0xfe

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Optimistic init: failed to send success callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    :try_start_1
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->computeKey()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;

    invoke-direct {v5, p1, v4}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Optimistic init: failed to store key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, p1, v4, v1, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 114
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public onInitializationFinished(Z)V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    iget-object v3, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;

    invoke-direct {p1, p0, v2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iget-object v7, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    invoke-static {p1, v6, v4, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 49
    :cond_4
    iput-object v6, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    .line 50
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getOptimisticInitDelayMs()I

    move-result p1

    if-gtz p1, :cond_5

    .line 53
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 58
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->computeKey()Ljava/lang/String;

    move-result-object v7

    .line 59
    iget-object v2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;

    invoke-direct {v8, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v7, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iput v4, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    invoke-static {v2, v8, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v13, v2

    move v2, p1

    move-object p1, v13

    :goto_1
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 71
    :cond_7
    :try_start_3
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;

    invoke-direct {v3, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iput v5, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    invoke-static {p1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p1, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    move v1, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v0

    move v1, v2

    .line 75
    :goto_3
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Optimistic init: failed to delete key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 79
    :goto_4
    iget-object v7, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;

    invoke-direct {p1, v1, p0, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;-><init>(ILcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    move-object v10, p1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    .line 83
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Optimistic init: timer armed for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 84
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 63
    :goto_5
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Optimistic init: failed to read key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
