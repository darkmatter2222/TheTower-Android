.class public Lcom/applovin/impl/j6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/q2;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/applovin/impl/u;

.field private final i:J

.field private final j:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final k:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;JLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/j6;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;JZLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;JZLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 2
    const-string v0, "TaskProcessAdResponse"

    invoke-direct {p0, v0, p7}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    iput-object p1, p0, Lcom/applovin/impl/j6;->g:Lorg/json/JSONObject;

    .line 9
    iput-object p2, p0, Lcom/applovin/impl/j6;->h:Lcom/applovin/impl/u;

    .line 10
    iput-wide p3, p0, Lcom/applovin/impl/j6;->i:J

    .line 11
    iput-object p6, p0, Lcom/applovin/impl/j6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 12
    iput-boolean p5, p0, Lcom/applovin/impl/j6;->k:Z

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    const-string v0, "type"

    const-string v1, "undefined"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "applovin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Starting task for AppLovin ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v3, Lcom/applovin/impl/p6;

    iget-object v5, p0, Lcom/applovin/impl/j6;->g:Lorg/json/JSONObject;

    iget-wide v6, p0, Lcom/applovin/impl/j6;->i:J

    iget-object v9, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    move-object v8, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/applovin/impl/p6;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;JLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    .line 9
    iget-object p1, v8, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void

    :cond_1
    move-object v8, p0

    move-object v4, p1

    .line 12
    const-string p1, "vast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v8, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v0, v8, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v1, "Starting task for VAST ad..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, v8, Lcom/applovin/impl/j6;->g:Lorg/json/JSONObject;

    iget-object v0, v8, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v4, p1, p0, v0}, Lcom/applovin/impl/n6;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/n6;

    move-result-object p1

    .line 17
    iget-object v0, v8, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void

    .line 21
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v8, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, v8, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to process ad of unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    new-instance p1, Lcom/applovin/impl/sdk/AppLovinError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x320

    invoke-direct {p1, v1, v0}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/applovin/impl/j6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/j6;->k:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->D:Lcom/applovin/impl/h2;

    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;)V

    :cond_1
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/j6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method public failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/applovin/impl/q2;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/applovin/impl/q2;

    invoke-interface {v0, p1}, Lcom/applovin/impl/q2;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinError;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    .line 12
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/j6;->k:Z

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->E:Lcom/applovin/impl/h2;

    iget-object v2, p0, Lcom/applovin/impl/j6;->h:Lcom/applovin/impl/u;

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j6;->g:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "ads"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Processing ad..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/applovin/impl/j6;->a(Lorg/json/JSONObject;)V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "No ads were returned from the server"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/j6;->h:Lcom/applovin/impl/u;

    invoke-virtual {v0}, Lcom/applovin/impl/u;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/j6;->h:Lcom/applovin/impl/u;

    invoke-virtual {v1}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/j6;->g:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 17
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinError;->NO_FILL:Lcom/applovin/impl/sdk/AppLovinError;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/j6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method
