.class public Lcom/applovin/impl/p6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lorg/json/JSONObject;

.field private final i:J

.field private final j:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;JLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    const-string v0, "TaskRenderAppLovinAd"

    invoke-direct {p0, v0, p6}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/p6;->g:Lorg/json/JSONObject;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/p6;->h:Lorg/json/JSONObject;

    .line 5
    iput-wide p3, p0, Lcom/applovin/impl/p6;->i:J

    .line 6
    iput-object p5, p0, Lcom/applovin/impl/p6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Rendering ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v4, Lcom/applovin/impl/sdk/ad/a;

    iget-object v0, p0, Lcom/applovin/impl/p6;->g:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/p6;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v4, v0, v1, v2}, Lcom/applovin/impl/sdk/ad/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/p6;->g:Lorg/json/JSONObject;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "gs_load_immediately"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/p6;->g:Lorg/json/JSONObject;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "vs_load_immediately"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 9
    new-instance v3, Lcom/applovin/impl/r5;

    iget-wide v5, p0, Lcom/applovin/impl/p6;->i:J

    iget-object v7, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    iget-object v8, p0, Lcom/applovin/impl/p6;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/r5;-><init>(Lcom/applovin/impl/sdk/ad/a;JLcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/r5;->c(Z)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/applovin/impl/r5;->b(Z)V

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i6$b;->b:Lcom/applovin/impl/i6$b;

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    return-void
.end method
