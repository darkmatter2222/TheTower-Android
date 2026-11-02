.class public final Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "bundle",
        "Landroid/os/Bundle;",
        "onActivityStarted",
        "onActivityResumed",
        "onActivityPaused",
        "onActivityStopped",
        "onActivitySaveInstanceState",
        "onActivityDestroyed",
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
.field final synthetic $$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
            ">;",
            "Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;

    new-instance v2, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/unity3d/ads/core/domain/LifecycleEvent;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2;->access$invokeSuspend$emit(Lkotlinx/coroutines/channels/ProducerScope;Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow;Lcom/unity3d/ads/core/domain/LifecycleEvent;)V

    return-void
.end method
