.class public Lcom/applovin/impl/o0;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Lcom/applovin/impl/sdk/network/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    const-string v0, "CommunicatorRequestTask"

    invoke-direct {p0, v0, p3, p1}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/o0;->g:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/o0;->h:Lcom/applovin/impl/sdk/network/a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/o0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/o0;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/o0;)Lcom/applovin/impl/sdk/network/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/o0;->h:Lcom/applovin/impl/sdk/network/a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/o0$a;

    iget-object v2, p0, Lcom/applovin/impl/o0;->h:Lcom/applovin/impl/sdk/network/a;

    iget-object v3, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p0}, Lcom/applovin/impl/n5;->d()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/applovin/impl/o0$a;-><init>(Lcom/applovin/impl/o0;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/l;Z)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void
.end method
