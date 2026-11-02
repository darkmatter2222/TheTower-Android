.class Lcom/ironsource/o3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/ironsource/o3;


# direct methods
.method constructor <init>(Lcom/ironsource/o3;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iput-object p2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/A3;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p2, p3}, Lcom/ironsource/lg;->b(J)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    .line 4
    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v1, v1, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/V;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v3, v3, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 9
    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    invoke-virtual {v4}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v4

    .line 10
    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    .line 13
    invoke-static {v3, v1, v2}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    .line 17
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v4

    .line 18
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/A3;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v2, v2, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/lg;->a(Ljava/util/Map;J)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v2, v2, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    .line 31
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    .line 32
    invoke-virtual {v0}, Lcom/ironsource/A3;->b()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/ironsource/lg;->a(Ljava/util/Map;JLjava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 42
    invoke-virtual {v0, p4}, Lcom/ironsource/V;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p4

    .line 44
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v1, v1, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 46
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    invoke-virtual {v2}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v2

    .line 47
    invoke-virtual {v0, p4, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    .line 50
    invoke-static {v1, p4, v0}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p4

    .line 51
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p4, p2, p3}, Lcom/ironsource/lg;->b(Ljava/util/Map;J)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object p2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iget-object p3, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    iget-object p4, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
