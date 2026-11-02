.class Lcom/applovin/impl/k7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/w2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/k7;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/applovin/impl/sdk/l;

.field final synthetic c:Lcom/applovin/impl/k7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/k7;Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/k7$b;->c:Lcom/applovin/impl/k7;

    iput-object p2, p0, Lcom/applovin/impl/k7$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/applovin/impl/k7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/applovin/impl/k7$b;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/i3;

    .line 2
    invoke-virtual {p1}, Lcom/applovin/impl/i3;->u()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/applovin/impl/k7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/l7;->b()Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/k7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/applovin/impl/l7;->a(Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/k7$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/l7;->a(Ljava/util/List;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/k7$b;->c:Lcom/applovin/impl/k7;

    invoke-static {p1}, Lcom/applovin/impl/k7;->b(Lcom/applovin/impl/k7;)Lcom/applovin/impl/w2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method
