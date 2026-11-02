.class Lcom/applovin/impl/y5$a;
.super Lcom/applovin/impl/r6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/y5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:J

.field final synthetic o:Lcom/applovin/impl/y5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/y5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/y5$a;->o:Lcom/applovin/impl/y5;

    iput-wide p5, p0, Lcom/applovin/impl/y5$a;->n:J

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/y5$a;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 11

    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to fetch basic SDK settings: server returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/y5$a;->n:J

    sub-long v6, v0, v2

    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/y5$a;->o:Lcom/applovin/impl/y5;

    invoke-static {v1, v0}, Lcom/applovin/impl/y5;->a(Lcom/applovin/impl/y5;Lorg/json/JSONObject;)V

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->k:Lcom/applovin/impl/h2;

    iget-object v4, p0, Lcom/applovin/impl/y5$a;->o:Lcom/applovin/impl/y5;

    move-object v5, p1

    move v8, p2

    move-object v10, p3

    move-object v9, p4

    invoke-static/range {v4 .. v10}, Lcom/applovin/impl/y5;->a(Lcom/applovin/impl/y5;Ljava/lang/String;JILorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/y5$a;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 11

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/y5$a;->n:J

    sub-long v6, v0, v2

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/y5$a;->o:Lcom/applovin/impl/y5;

    invoke-static {v0, p2}, Lcom/applovin/impl/y5;->a(Lcom/applovin/impl/y5;Lorg/json/JSONObject;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->j:Lcom/applovin/impl/h2;

    iget-object v4, p0, Lcom/applovin/impl/y5$a;->o:Lcom/applovin/impl/y5;

    const/4 v10, 0x0

    move-object v5, p1

    move-object v9, p2

    move v8, p3

    invoke-static/range {v4 .. v10}, Lcom/applovin/impl/y5;->a(Lcom/applovin/impl/y5;Ljava/lang/String;JILorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method
