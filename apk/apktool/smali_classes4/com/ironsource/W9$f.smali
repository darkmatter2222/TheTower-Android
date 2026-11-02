.class Lcom/ironsource/W9$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W9;->b(Lcom/ironsource/R9;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/R9;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/W9;


# direct methods
.method constructor <init>(Lcom/ironsource/W9;Lcom/ironsource/R9;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    iput-object p2, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    iput-object p3, p0, Lcom/ironsource/W9$f;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    invoke-static {v1}, Lcom/ironsource/W9;->-$$Nest$fgetd(Lcom/ironsource/W9;)Lcom/ironsource/Y4;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Lcom/ironsource/R9;)Lcom/ironsource/X4;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 11
    invoke-virtual {v3}, Lcom/ironsource/R9;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isbiddinginstance"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 12
    invoke-virtual {v4}, Lcom/ironsource/R9;->m()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isoneflow"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 13
    invoke-virtual {v4}, Lcom/ironsource/R9;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "demandsourcename"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 15
    invoke-static {v4}, Lcom/ironsource/da;->a(Lcom/ironsource/R9;)Ljava/lang/String;

    move-result-object v4

    .line 16
    const-string v5, "producttype"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v3

    sget-object v4, Lcom/ironsource/M;->a:Lcom/ironsource/M;

    iget-object v5, p0, Lcom/ironsource/W9$f;->a:Lcom/ironsource/R9;

    .line 21
    invoke-virtual {v5}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Lcom/ironsource/M;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 23
    const-string v5, "custom_c"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    .line 28
    sget-object v3, Lcom/ironsource/le;->h:Lcom/ironsource/le$a;

    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 30
    sget-object v2, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    if-ne v0, v2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v2

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgetb(Lcom/ironsource/W9;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgetc(Lcom/ironsource/W9;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/w4;)V

    .line 33
    iget-object v0, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/W9$f;->b:Ljava/util/Map;

    invoke-virtual {v2, v1, v3, v0}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/w4;)V

    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v2

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgetb(Lcom/ironsource/W9;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgetc(Lcom/ironsource/W9;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/x4;)V

    .line 38
    iget-object v0, p0, Lcom/ironsource/W9$f;->c:Lcom/ironsource/W9;

    invoke-static {v0}, Lcom/ironsource/W9;->-$$Nest$fgeta(Lcom/ironsource/W9;)Lcom/ironsource/sdk/controller/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/W9$f;->b:Ljava/util/Map;

    invoke-virtual {v2, v1, v3, v0}, Lcom/ironsource/sdk/controller/e;->b(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V

    return-void
.end method
