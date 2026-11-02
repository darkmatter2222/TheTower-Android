.class Lcom/applovin/impl/a6$a;
.super Lcom/applovin/impl/r6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/a6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/applovin/mediation/MaxAdFormat;

.field final synthetic p:Lcom/applovin/impl/a6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a6;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/a6$a;->p:Lcom/applovin/impl/a6;

    iput-object p4, p0, Lcom/applovin/impl/a6$a;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/a6$a;->o:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/a6$a;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 21
    iget-object p4, p0, Lcom/applovin/impl/a6$a;->p:Lcom/applovin/impl/a6;

    invoke-static {p4, p1, p2, p3}, Lcom/applovin/impl/a6;->a(Lcom/applovin/impl/a6;Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    iget-object p4, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p4

    const-string v0, "fetchMediatedAd"

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/a6$a;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    invoke-virtual {v0}, Lcom/applovin/impl/r0$b;->a()J

    move-result-wide v0

    const-string v2, "ad_fetch_latency_millis"

    invoke-static {p2, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    invoke-virtual {v0}, Lcom/applovin/impl/r0$b;->b()J

    move-result-wide v0

    const-string v2, "ad_fetch_response_size"

    invoke-static {p2, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "code"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/a6$a;->n:Ljava/lang/String;

    const-string p3, "ad_unit_id"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/a6$a;->o:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ad_format"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    invoke-virtual {p1}, Lcom/applovin/impl/r0$b;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p3, "latency_ms"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/r6;->m:Lcom/applovin/impl/r0$b;

    invoke-virtual {p1}, Lcom/applovin/impl/r0$b;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p3, "response_size"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/h2;->m0:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p3, v0}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Lcom/applovin/impl/a6$a;->p:Lcom/applovin/impl/a6;

    invoke-static {p1, p2}, Lcom/applovin/impl/a6;->a(Lcom/applovin/impl/a6;Lorg/json/JSONObject;)V

    return-void

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/a6$a;->p:Lcom/applovin/impl/a6;

    const/4 v0, 0x0

    invoke-static {p2, p1, p3, v0}, Lcom/applovin/impl/a6;->a(Lcom/applovin/impl/a6;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
