.class public Lcom/applovin/impl/a7;
.super Lcom/applovin/impl/b7;
.source "SourceFile"


# instance fields
.field private final g:Lcom/applovin/impl/g3;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/g3;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    const-string v0, "TaskValidateMaxReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/b7;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .line 12
    invoke-super {p0, p1}, Lcom/applovin/impl/w6;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 18
    const-string v0, "rejected"

    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "network_timeout"

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-static {v0}, Lcom/applovin/impl/t4;->a(Ljava/lang/String;)Lcom/applovin/impl/t4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/g3;->a(Lcom/applovin/impl/t4;)V

    .line 28
    const-string v1, "error_message"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/h2;->B0:Lcom/applovin/impl/h2;

    iget-object v2, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/d3;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/c3;Ljava/util/Map;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/t4;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/g3;->a(Lcom/applovin/impl/t4;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/o3;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/o3;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/o3;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_data"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/g3;->v0()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_MCODE"

    :goto_0
    const-string v1, "mcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/c3;->C()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "NO_BCODE"

    :goto_1
    const-string v1, "bcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.0/mvr"

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/a7;->g:Lcom/applovin/impl/g3;

    invoke-virtual {v0}, Lcom/applovin/impl/g3;->A0()Z

    move-result v0

    return v0
.end method
