.class public Lcom/applovin/impl/f;
.super Lcom/applovin/impl/i2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/h2$b;->a:Lcom/applovin/impl/h2$b;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/i2;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/h2$b;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/applovin/impl/u;->f()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/AppLovinError;Ljava/util/Map;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/i2;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->J:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/i2;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 9
    invoke-static {p3}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/applovin/impl/u;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_zone_id"

    invoke-static {v1, v0, p5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-virtual {p2}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {v1, v0, p5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ad_size"

    invoke-static {p3, p2, p5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 30
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/AppLovinError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "error_message"

    invoke-static {p3, p2, p5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/AppLovinError;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "error_code"

    invoke-static {p3, p2, p5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_4
    invoke-virtual {p0, p1, p5}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/AppLovinError;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 6

    .line 4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/AppLovinError;Ljava/util/Map;)V

    return-void
.end method
