.class Lcom/ironsource/r3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->a(Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/C5;

.field final synthetic b:Lcom/ironsource/mediationsdk/IronSource$a;

.field final synthetic c:Lcom/ironsource/r3;


# direct methods
.method constructor <init>(Lcom/ironsource/r3;Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iput-object p2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iput-object p3, p0, Lcom/ironsource/r3$b;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/N8;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventSessionId"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/N8;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "essn"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetv(Lcom/ironsource/r3;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v1, v2}, Lcom/ironsource/r3;->g(Lcom/ironsource/C5;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v1, v0, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Ljava/lang/String;Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1, v0}, Lcom/ironsource/r3;->-$$Nest$mb(Lcom/ironsource/r3;Lcom/ironsource/C5;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/C5;->a(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetv(Lcom/ironsource/r3;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "rawConnectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v1}, Lcom/ironsource/C5;->c()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/r3$b;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;ILcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    .line 19
    sget-object v1, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    invoke-virtual {v1}, Lcom/ironsource/r3$e;->b()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adUnit"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "reason"

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Lcom/ironsource/C5;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "ext1"

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Lcom/ironsource/C5;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetE(Lcom/ironsource/r3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetE(Lcom/ironsource/r3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId"

    if-eq v2, v3, :cond_4

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timestamp"

    if-eq v2, v3, :cond_4

    .line 31
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0, v1}, Lcom/ironsource/r3;->-$$Nest$mi(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->h(Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$me(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 40
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->c(Lcom/ironsource/C5;)I

    move-result v0

    .line 41
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->j(Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->f(Lcom/ironsource/C5;)V

    .line 49
    :cond_7
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/N8;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    .line 51
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "firstSessionTimestamp"

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_8
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgett(Lcom/ironsource/r3;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$fputt(Lcom/ironsource/r3;I)V

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetB(Lcom/ironsource/r3;)[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->c()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v3}, Lcom/ironsource/r3;->-$$Nest$fgetB(Lcom/ironsource/r3;)[I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;I[I)Z

    move-result v0

    goto :goto_1

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->d(Lcom/ironsource/C5;)Z

    move-result v0

    .line 70
    :goto_1
    iget-object v2, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetm(Lcom/ironsource/r3;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v0, :cond_b

    invoke-static {v2, v1}, Lcom/ironsource/r3;->-$$Nest$fputm(Lcom/ironsource/r3;Z)V

    .line 72
    :cond_b
    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetp(Lcom/ironsource/r3;)Lcom/ironsource/G4;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 74
    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$mg(Lcom/ironsource/r3;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$mf(Lcom/ironsource/r3;)V

    return-void

    .line 76
    :cond_c
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/r3;->-$$Nest$mb(Lcom/ironsource/r3;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_e

    .line 77
    :cond_d
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;)V

    :cond_e
    return-void
.end method
