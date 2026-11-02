.class public Lcom/applovin/impl/c6;
.super Lcom/applovin/impl/e6;
.source "SourceFile"


# instance fields
.field private final j:Lcom/applovin/impl/k;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/k;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    const-string v0, "adtoken_zone"

    invoke-static {v0}, Lcom/applovin/impl/u;->a(Ljava/lang/String;)Lcom/applovin/impl/u;

    move-result-object v0

    const-string v1, "TaskFetchNativeTokenAd"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/applovin/impl/e6;-><init>(Lcom/applovin/impl/u;Ljava/lang/String;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/c6;->j:Lcom/applovin/impl/k;

    return-void
.end method


# virtual methods
.method protected h()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/c6;->j:Lcom/applovin/impl/k;

    invoke-virtual {v1}, Lcom/applovin/impl/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/c6;->j:Lcom/applovin/impl/k;

    invoke-virtual {v1}, Lcom/applovin/impl/k;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken_prefix"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
