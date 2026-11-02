.class Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;
.super Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;-><init>(Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;-><init>(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;)V

    return-void
.end method


# virtual methods
.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/g3;

    invoke-static {v0, v1, p2}, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;->a(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;Lcom/applovin/impl/g3;Lcom/applovin/mediation/MaxError;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/g3;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;->a(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;Lcom/applovin/impl/g3;Lcom/applovin/mediation/MaxError;)V

    .line 3
    invoke-super {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->onAdHidden(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/a;->logger:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    iget-object v1, v0, Lcom/applovin/impl/mediation/ads/a;->logger:Lcom/applovin/impl/sdk/p;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/a;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MaxRewardedAdListener.onUserRewarded(ad="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reward="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    iget-object v3, v3, Lcom/applovin/impl/mediation/ads/a;->adListener:Lcom/applovin/mediation/MaxAdListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;->b:Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/a;->adListener:Lcom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;Z)V

    return-void
.end method
