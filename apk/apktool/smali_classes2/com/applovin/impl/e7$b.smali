.class Lcom/applovin/impl/e7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/w2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/e7;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/f7;

.field final synthetic b:Lcom/applovin/impl/sdk/l;

.field final synthetic c:Lcom/applovin/impl/e7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/e7;Lcom/applovin/impl/f7;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/e7$b;->c:Lcom/applovin/impl/e7;

    iput-object p2, p0, Lcom/applovin/impl/e7$b;->a:Lcom/applovin/impl/f7;

    iput-object p3, p0, Lcom/applovin/impl/e7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->b()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/e7$e;->a:Lcom/applovin/impl/e7$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/e7$d;->b:Lcom/applovin/impl/e7$d;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 8
    sget-object p1, Lcom/applovin/impl/e5;->x:Lcom/applovin/impl/e5;

    invoke-virtual {p1}, Lcom/applovin/impl/e5;->a()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/applovin/impl/e7$b;->a:Lcom/applovin/impl/f7;

    invoke-virtual {p2}, Lcom/applovin/impl/f7;->j()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/applovin/impl/e5;->y:Lcom/applovin/impl/e5;

    invoke-virtual {p1}, Lcom/applovin/impl/e5;->a()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/applovin/impl/e7$b;->a:Lcom/applovin/impl/f7;

    invoke-virtual {p2}, Lcom/applovin/impl/f7;->c()Ljava/lang/String;

    move-result-object p2

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/e7$b;->c:Lcom/applovin/impl/e7;

    iget-object v1, p0, Lcom/applovin/impl/e7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/e7$b$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/e7$b$a;-><init>(Lcom/applovin/impl/e7$b;Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/applovin/mediation/MaxDebuggerTcfStringActivity;

    invoke-static {v0, p1, v1, v2}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    sget-object v0, Lcom/applovin/impl/e7$c;->d:Lcom/applovin/impl/e7$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 30
    iget-object p1, p0, Lcom/applovin/impl/e7$b;->c:Lcom/applovin/impl/e7;

    iget-object p2, p0, Lcom/applovin/impl/e7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object p2

    new-instance v0, Lcom/applovin/impl/e7$b$b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/e7$b$b;-><init>(Lcom/applovin/impl/e7$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerCmpNetworksListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/e7$b;->c:Lcom/applovin/impl/e7;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
