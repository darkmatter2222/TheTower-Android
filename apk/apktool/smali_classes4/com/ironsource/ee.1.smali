.class public final Lcom/ironsource/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/U;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/U<",
        "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/hg;

.field private final b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;


# direct methods
.method public static synthetic $r8$lambda$TEwntW2XwZod62X1XCTqFt9rd4s(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/ee;->a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5BebCMGp3i3IOR5XFmJpU7tZH4(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/ee;->a(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;)V
    .locals 1

    const-string v0, "threadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    .line 3
    iput-object p2, p0, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    return-void
.end method

.method private static final a(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    invoke-interface {p0, p1}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;->onRewardedAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V
    .locals 4

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/rewarded/RewardedAd;->getAdInfo()Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedAdLoaderListener.onRewardedAdLoaded adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;->onRewardedAdLoaded(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedAdLoaderListener.onRewardedAdLoadFailed error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ee$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ee$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V
    .locals 2

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ee$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/ee$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/ee;->a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V

    return-void
.end method
