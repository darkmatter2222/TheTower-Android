.class public Lcom/applovin/impl/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/applovin/impl/c3;

.field private d:Lcom/applovin/impl/sdk/ad/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/applovin/impl/r1;->a:J

    .line 4
    instance-of p2, p1, Lcom/applovin/impl/sdk/ad/b;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    iput-object p1, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    .line 7
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/applovin/impl/r1;->b:Ljava/lang/String;

    return-void

    .line 9
    :cond_1
    instance-of p2, p1, Lcom/applovin/impl/c3;

    if-eqz p2, :cond_2

    .line 11
    check-cast p1, Lcom/applovin/impl/c3;

    iput-object p1, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/c3;

    .line 12
    invoke-virtual {p1}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/r1;->b:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/c3;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    iput-object p1, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    return-void

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/c3;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/applovin/impl/c3;

    iput-object p1, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/c3;

    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/r1;->a:J

    return-wide v0
.end method

.method public c()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unknown"

    return-object v0
.end method

.method public e()Lcom/applovin/impl/c3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/c3;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    const-string v0, "AppLovin"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/c3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/c3;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    const-string v0, "Unknown"

    return-object v0
.end method
