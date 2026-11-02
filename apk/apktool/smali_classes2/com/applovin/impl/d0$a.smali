.class Lcom/applovin/impl/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d0;->f()Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/d0;


# direct methods
.method constructor <init>(Lcom/applovin/impl/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    iput-object p2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    iget-object v0, v0, Lcom/applovin/impl/c0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->W0:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {v0}, Lcom/applovin/impl/d0;->a(Lcom/applovin/impl/d0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {v1}, Lcom/applovin/impl/d0;->b(Lcom/applovin/impl/d0;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->replaceAll(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {v0}, Lcom/applovin/impl/d0;->b(Lcom/applovin/impl/d0;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->replaceAll(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {v0}, Lcom/applovin/impl/d0;->c(Lcom/applovin/impl/d0;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    iget-object p1, p1, Lcom/applovin/impl/c0;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    iget-object v0, p1, Lcom/applovin/impl/c0;->c:Lcom/applovin/impl/sdk/p;

    iget-object p1, p1, Lcom/applovin/impl/c0;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to cache JavaScript resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {p1}, Lcom/applovin/impl/d0;->d(Lcom/applovin/impl/d0;)Lcom/applovin/impl/d0$d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {p1}, Lcom/applovin/impl/d0;->d(Lcom/applovin/impl/d0;)Lcom/applovin/impl/d0$d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    invoke-static {v0}, Lcom/applovin/impl/d0;->e(Lcom/applovin/impl/d0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/applovin/impl/d0$d;->a(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
