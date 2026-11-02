.class Lcom/applovin/impl/d1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d1$a;->a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/n2;

.field final synthetic b:Lcom/applovin/impl/d1$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/d1$a;Lcom/applovin/impl/n2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d1$a$a;->b:Lcom/applovin/impl/d1$a;

    iput-object p2, p0, Lcom/applovin/impl/d1$a$a;->a:Lcom/applovin/impl/n2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/d1$a$a;->a(Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/d1$a$a;->b:Lcom/applovin/impl/d1$a;

    iget-object v0, v0, Lcom/applovin/impl/d1$a;->b:Lcom/applovin/impl/d1;

    invoke-static {v0}, Lcom/applovin/impl/d1;->a(Lcom/applovin/impl/d1;)Lcom/applovin/impl/e1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/e1;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/d1$a$a;->a:Lcom/applovin/impl/n2;

    invoke-virtual {v1}, Lcom/applovin/impl/n2;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/r1;

    iget-object v1, p0, Lcom/applovin/impl/d1$a$a;->b:Lcom/applovin/impl/d1$a;

    iget-object v1, v1, Lcom/applovin/impl/d1$a;->b:Lcom/applovin/impl/d1;

    invoke-static {v1}, Lcom/applovin/impl/d1;->a(Lcom/applovin/impl/d1;)Lcom/applovin/impl/e1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/e1;->e()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/p1;->a(Lcom/applovin/impl/r1;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
