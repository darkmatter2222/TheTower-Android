.class Lcom/applovin/impl/v6$a;
.super Lcom/applovin/impl/r6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/v6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/applovin/impl/v6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/v6;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/v6$a;->n:Lcom/applovin/impl/v6;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/u8;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object p3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Unable to resolve VAST wrapper. Server returned "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v6$a;->n:Lcom/applovin/impl/v6;

    invoke-static {p1, p2}, Lcom/applovin/impl/v6;->a(Lcom/applovin/impl/v6;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lcom/applovin/impl/u8;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/v6$a;->a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/u8;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/u8;I)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/v6$a;->n:Lcom/applovin/impl/v6;

    invoke-static {p1}, Lcom/applovin/impl/v6;->a(Lcom/applovin/impl/v6;)Lcom/applovin/impl/z7;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/v6$a;->n:Lcom/applovin/impl/v6;

    invoke-static {p3}, Lcom/applovin/impl/v6;->b(Lcom/applovin/impl/v6;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/v6$a;->n:Lcom/applovin/impl/v6;

    iget-object v0, v0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p2, p1, p3, v0}, Lcom/applovin/impl/n6;->a(Lcom/applovin/impl/u8;Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/n6;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/applovin/impl/u8;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/v6$a;->a(Ljava/lang/String;Lcom/applovin/impl/u8;I)V

    return-void
.end method
