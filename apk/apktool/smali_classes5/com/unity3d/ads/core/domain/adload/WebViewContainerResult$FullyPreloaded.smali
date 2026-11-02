.class public final Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
.super Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FullyPreloaded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;",
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
        "container",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "adPlayer",
        "Lcom/unity3d/ads/adplayer/AdPlayer;",
        "bridge",
        "Lcom/unity3d/ads/adplayer/WebViewBridge;",
        "loadEvent",
        "Lcom/unity3d/ads/adplayer/model/LoadEvent;",
        "<init>",
        "(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V",
        "getContainer",
        "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "getAdPlayer",
        "()Lcom/unity3d/ads/adplayer/AdPlayer;",
        "getBridge",
        "()Lcom/unity3d/ads/adplayer/WebViewBridge;",
        "getLoadEvent",
        "()Lcom/unity3d/ads/adplayer/model/LoadEvent;",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

.field private final bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

.field private final container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

.field private final loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 24
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 25
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/adplayer/AdPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final component3()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public final component4()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final getBridge()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final getLoadEvent()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/model/LoadEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FullyPreloaded(container="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bridge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
