.class Lcom/applovin/impl/b6$a;
.super Lcom/applovin/impl/r6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/applovin/impl/b6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b6;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/b6$a;->n:Lcom/applovin/impl/b6;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/r6;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/b6$a;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b6$a;->n:Lcom/applovin/impl/b6;

    invoke-static {v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6;)Lcom/applovin/impl/r0$e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/impl/r0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/b6$a;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/b6$a;->n:Lcom/applovin/impl/b6;

    invoke-static {v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6;)Lcom/applovin/impl/r0$e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/impl/r0$e;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
