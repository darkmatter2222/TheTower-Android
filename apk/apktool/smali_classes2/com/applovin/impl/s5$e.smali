.class Lcom/applovin/impl/s5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/q5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/s5;->n()Lcom/applovin/impl/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/s5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/s5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    invoke-static {v0}, Lcom/applovin/impl/s5;->a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    iget-object v0, v0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    iget-object v1, v1, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->g0()Lcom/applovin/impl/o4;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/applovin/impl/o4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    invoke-static {v0}, Lcom/applovin/impl/s5;->a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v7;->d(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    iget-object p1, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    iget-object v0, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object p1, p1, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish caching HTML template "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    invoke-static {v2}, Lcom/applovin/impl/s5;->a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/s5$e;->a:Lcom/applovin/impl/s5;

    invoke-static {v2}, Lcom/applovin/impl/s5;->a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
