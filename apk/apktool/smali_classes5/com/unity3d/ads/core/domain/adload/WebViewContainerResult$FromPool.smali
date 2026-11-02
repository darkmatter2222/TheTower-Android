.class public final Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
.super Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromPool"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;",
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
        "container",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "<init>",
        "(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V",
        "getContainer",
        "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FromPool(container="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
