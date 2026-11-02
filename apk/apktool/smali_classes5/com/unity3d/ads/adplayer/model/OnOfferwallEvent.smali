.class public final Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u001e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;",
        "Lcom/unity3d/ads/adplayer/model/WebViewEvent;",
        "offerwallEvent",
        "Lcom/unity3d/services/ads/offerwall/OfferwallEvent;",
        "<init>",
        "(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;)V",
        "category",
        "",
        "getCategory",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "parameters",
        "",
        "",
        "getParameters",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
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
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;)V
    .locals 1

    const-string v0, "offerwallEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "OFFERWALL"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->category:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
