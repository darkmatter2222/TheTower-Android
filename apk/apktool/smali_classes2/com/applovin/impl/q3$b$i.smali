.class Lcom/applovin/impl/q3$b$i;
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
.field final synthetic a:Lcom/applovin/impl/v2;

.field final synthetic b:Lcom/applovin/impl/q3$b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/q3$b;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/q3$b$i;->b:Lcom/applovin/impl/q3$b;

    iput-object p2, p0, Lcom/applovin/impl/q3$b$i;->a:Lcom/applovin/impl/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/q3$b$i;->a(Lcom/applovin/mediation/MaxDebuggerDetailActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerDetailActivity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/q3$b$i;->a:Lcom/applovin/impl/v2;

    check-cast v0, Lcom/applovin/impl/e4;

    invoke-virtual {v0}, Lcom/applovin/impl/e4;->r()Lcom/applovin/impl/i3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/j3;->initialize(Lcom/applovin/impl/i3;)V

    return-void
.end method
