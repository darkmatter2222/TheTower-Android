.class Lcom/applovin/impl/l6$a;
.super Lcom/applovin/impl/m3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/l6;->a(Lcom/applovin/impl/c3;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/applovin/mediation/MaxAdFormat;

.field final synthetic c:Lcom/applovin/impl/l6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/l6;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    iput-object p3, p0, Lcom/applovin/impl/l6$a;->b:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {p0, p2}, Lcom/applovin/impl/m3;-><init>(Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->i(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->k(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v1}, Lcom/applovin/impl/l6;->j(Lcom/applovin/impl/l6;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load ad to cache for failover: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    const-string p2, "ad_unit_id"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/applovin/impl/l6$a;->b:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ad_format"

    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object p2, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {p2}, Lcom/applovin/impl/l6;->m(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/h2;->L0:Lcom/applovin/impl/h2;

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->d(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->f(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v1}, Lcom/applovin/impl/l6;->e(Lcom/applovin/impl/l6;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully loaded ad to cache for failover: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    check-cast p1, Lcom/applovin/impl/g3;

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->g(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->K0:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/d3;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/c3;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/l6$a;->c:Lcom/applovin/impl/l6;

    invoke-static {v0}, Lcom/applovin/impl/l6;->h(Lcom/applovin/impl/l6;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->H()Lcom/applovin/impl/v1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/g3;)V

    return-void
.end method
