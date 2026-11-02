.class public final Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetLifecycleFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetLifecycleFlow.kt\ncom/unity3d/ads/core/domain/AndroidGetLifecycleFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
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
.field private final applicationContext:Landroid/content/Context;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;->applicationContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method


# virtual methods
.method public final invoke()Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;->applicationContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    const v2, 0x7fffffff

    const/4 v3, 0x2

    .line 78
    invoke-static {v0, v2, v1, v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application context is required"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
