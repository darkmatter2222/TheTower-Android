.class Lcom/applovin/impl/m2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/p2;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAd;

.field private final b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final c:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field final synthetic f:Lcom/applovin/impl/m2;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/m2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/m2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    iput-object p5, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 5
    iput-object p6, p0, Lcom/applovin/impl/m2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/m2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 7
    iput-object p3, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/m2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/m2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/m2$c;-><init>(Lcom/applovin/impl/m2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->w()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    const-string p1, "ad_display_failure"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "IncentivizedAdController"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v2, "Finishing direct ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v0}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v2}, Lcom/applovin/impl/m2;->b(Lcom/applovin/impl/m2;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v2, v2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v2, v2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid reward state - result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and wasFullyEngaged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v3}, Lcom/applovin/impl/m2;->b(Lcom/applovin/impl/m2;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v2, "Cancelling any incoming reward requests for this ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->d()V

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v0}, Lcom/applovin/impl/m2;->b(Lcom/applovin/impl/m2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p2

    const-string v0, "User closed the ad after fully watching but reward validation task did not return on time"

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    const-string p2, "network_timeout"

    const/16 v0, -0x1f4

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    .line 33
    const-string p2, "unknown_early_dismissal_source"

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad closed prematurely from source: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v0, -0x258

    .line 41
    :goto_0
    invoke-static {p2}, Lcom/applovin/impl/t4;->a(Ljava/lang/String;)Lcom/applovin/impl/t4;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/ad/b;->a(Lcom/applovin/impl/t4;)V

    .line 43
    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v2, v2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v2, v2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Notifying listener of reward validation failure"

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_8
    iget-object v2, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v2, p1, v0}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 46
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v0}, Lcom/applovin/impl/m2;->c(Lcom/applovin/impl/m2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v2, "details"

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 47
    const-string v2, "source"

    invoke-static {v2, p2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p2

    sget-object v2, Lcom/applovin/impl/h2;->M:Lcom/applovin/impl/h2;

    invoke-virtual {p2, v2, p1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 52
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->A0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_b

    .line 54
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p2

    const-string v0, "Scheduling report rewarded ad..."

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_a
    new-instance p2, Lcom/applovin/impl/s6;

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p2, p1, v0}, Lcom/applovin/impl/s6;-><init>(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;)V

    .line 56
    iget-object p1, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p1, p1, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v2, "IncentivizedAdController"

    if-eqz v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Lcom/applovin/impl/sdk/ad/b;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/applovin/impl/m2$c;->a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {p0, v1, v3}, Lcom/applovin/impl/m2$c;->a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 10
    const-string v1, "null/expired ad"

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "invalid ad of type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v3, v3, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v3, v3, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received `adHidden` callback for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v1, v0}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 16
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "Notifying listener of rewarded ad dismissal"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v1, v1, Lcom/applovin/impl/p2;

    .line 4
    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/b;

    if-eqz v2, :cond_1

    .line 6
    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/m2$c;->a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/m2$c;->a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 11
    const-string v2, "null/expired ad"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid ad of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v3, v3, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v3, v3, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received `"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v5, "adDisplayFailed"

    goto :goto_1

    :cond_3
    const-string v5, "adHidden"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "` callback for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IncentivizedAdController"

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v2, v0}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Lcom/applovin/sdk/AppLovinAd;)V

    if-eqz v1, :cond_5

    .line 20
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/m2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-static {p1, v0}, Lcom/applovin/impl/x2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    const-string v1, "quota_exceeded"

    invoke-static {v0, v1}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/x2;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 4
    const-string p2, "error_message"

    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->L:Lcom/applovin/impl/h2;

    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 4
    const-string p2, "error_message"

    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object v0, v0, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->L:Lcom/applovin/impl/h2;

    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    const-string v1, "accepted"

    invoke-static {v0, v1}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/x2;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    const-string v1, "network_timeout"

    invoke-static {v0, v1}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 4
    const-string v0, "error_message"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    iget-object p2, p2, Lcom/applovin/impl/m2;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p2

    sget-object v1, Lcom/applovin/impl/h2;->L:Lcom/applovin/impl/h2;

    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2, v1, p1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    if-eqz v0, :cond_2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    :cond_2
    invoke-static {v1, p2, p3}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;D)D

    .line 5
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    if-nez p4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    invoke-static {p2, v2}, Lcom/applovin/impl/m2;->a(Lcom/applovin/impl/m2;Z)Z

    .line 7
    iget-object p2, p0, Lcom/applovin/impl/m2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object p3, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {p3}, Lcom/applovin/impl/m2;->c(Lcom/applovin/impl/m2;)D

    move-result-wide p3

    iget-object v0, p0, Lcom/applovin/impl/m2$c;->f:Lcom/applovin/impl/m2;

    invoke-static {v0}, Lcom/applovin/impl/m2;->b(Lcom/applovin/impl/m2;)Z

    move-result v0

    invoke-static {p2, p1, p3, p4, v0}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    return-void
.end method
