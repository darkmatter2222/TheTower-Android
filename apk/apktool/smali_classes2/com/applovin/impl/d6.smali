.class public Lcom/applovin/impl/d6;
.super Lcom/applovin/impl/w5;
.source "SourceFile"


# instance fields
.field private final i:J

.field private final j:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/u;JLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 7

    .line 1
    const-string v5, "TaskFetchNextAd"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/d6;-><init>(Lcom/applovin/impl/u;JLcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/u;JLcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p5, p6}, Lcom/applovin/impl/w5;-><init>(Lcom/applovin/impl/u;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 4
    iput-wide p2, p0, Lcom/applovin/impl/d6;->i:J

    .line 5
    iput-object p4, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/n5;
    .locals 7

    .line 1
    new-instance v0, Lcom/applovin/impl/j6;

    iget-object v2, p0, Lcom/applovin/impl/w5;->g:Lcom/applovin/impl/u;

    iget-wide v3, p0, Lcom/applovin/impl/d6;->i:J

    iget-object v5, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v6, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/j6;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;JLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/w5;->a(ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v1, v0, Lcom/applovin/impl/q2;

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/d6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lcom/applovin/impl/q2;

    invoke-interface {p1, v0}, Lcom/applovin/impl/q2;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void

    .line 11
    :cond_0
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/s0;->a(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/s0;->b(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
