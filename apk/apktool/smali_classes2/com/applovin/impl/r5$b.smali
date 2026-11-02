.class Lcom/applovin/impl/r5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/q5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/r5;->l()Lcom/applovin/impl/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/r5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/r5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-static {v0, p1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-static {v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/a;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-static {p1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    iget-object p1, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    iget-object v0, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object p1, p1, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish caching non-video resources for ad #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-static {v2}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    iget-object v0, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object p1, p1, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad updated with cachedHTML = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5;

    invoke-static {v2}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->h1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/p;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
