.class public Lcom/applovin/impl/u3;
.super Lcom/applovin/impl/x3;
.source "SourceFile"


# instance fields
.field private final c:Lcom/applovin/impl/n3;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/n3;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/x3$a;->c:Lcom/applovin/impl/x3$a;

    invoke-virtual {p1}, Lcom/applovin/impl/n3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/x3;-><init>(Lcom/applovin/impl/x3$a;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/u3;->c:Lcom/applovin/impl/n3;

    return-void
.end method


# virtual methods
.method public c()Lcom/applovin/impl/n3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u3;->c:Lcom/applovin/impl/n3;

    return-object v0
.end method
