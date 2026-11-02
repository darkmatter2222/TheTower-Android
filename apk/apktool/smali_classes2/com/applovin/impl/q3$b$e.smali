.class Lcom/applovin/impl/q3$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/q3$b;->a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/q3$b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/q3$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/q3$b$e;->a:Lcom/applovin/impl/q3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/q3$b$e;->a(Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/q3$b$e;->a:Lcom/applovin/impl/q3$b;

    iget-object v0, v0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v0}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->k()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/q3$b$e;->a:Lcom/applovin/impl/q3$b;

    iget-object v1, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/s3;->x()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/q3$b$e;->a:Lcom/applovin/impl/q3$b;

    iget-object v2, v2, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v2}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/s3;->u()Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/j7;->initialize(Ljava/util/List;Ljava/util/List;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
