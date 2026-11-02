.class public final Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;
.super Ljava/lang/Object;
.source "AndroidInstallReferrerDataSource.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerSetupFinished",
        "",
        "responseCode",
        "",
        "onInstallReferrerServiceDisconnected",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;Lcom/android/installreferrer/api/InstallReferrerClient;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;->access$onError(Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 6

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;->access$getScope$p(Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 v4, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    :try_start_0
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catchall_0
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v0}, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;->access$onError(Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;Lkotlinx/coroutines/CancellableContinuation;)V

    goto :goto_0

    .line 83
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :catchall_1
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource$invoke$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v0}, Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;->access$onError(Lcom/unity3d/ads/core/data/datasource/AndroidInstallReferrerDataSource;Lkotlinx/coroutines/CancellableContinuation;)V

    :cond_1
    :goto_0
    return-void
.end method
