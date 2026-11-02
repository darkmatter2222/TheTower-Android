.class Lcom/applovin/impl/s5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/s5;->m()Lcom/applovin/impl/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/d8;

.field final synthetic b:Lcom/applovin/impl/s5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/s5;Lcom/applovin/impl/d8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/s5$a;->b:Lcom/applovin/impl/s5;

    iput-object p2, p0, Lcom/applovin/impl/s5$a;->a:Lcom/applovin/impl/d8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5$a;->a:Lcom/applovin/impl/d8;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/d8;->a(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/applovin/impl/s5$a;->b:Lcom/applovin/impl/s5;

    invoke-static {p1}, Lcom/applovin/impl/s5;->a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/s5$a;->b:Lcom/applovin/impl/s5;

    iget-object p1, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/s5$a;->b:Lcom/applovin/impl/s5;

    iget-object v0, p1, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object p1, p1, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v1, "Failed to cache static companion ad"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
