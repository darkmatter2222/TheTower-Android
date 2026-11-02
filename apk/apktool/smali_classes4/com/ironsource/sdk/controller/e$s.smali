.class Lcom/ironsource/sdk/controller/e$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->b(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/X4;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/x4;

.field final synthetic d:Lcom/ironsource/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$s;->d:Lcom/ironsource/sdk/controller/e;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/e$s;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/e$s;->c:Lcom/ironsource/x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/v8;

    invoke-direct {v0}, Lcom/ironsource/v8;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/X4;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "demandsourcename"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    sget-object v2, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    .line 6
    invoke-static {v1, v2}, Lcom/ironsource/B8;->a(Lcom/ironsource/X4;Lcom/ironsource/t8$e;)Lcom/ironsource/t8$e;

    move-result-object v1

    .line 7
    const-string v2, "producttype"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    .line 13
    invoke-static {v1}, Lcom/ironsource/B8;->a(Lcom/ironsource/X4;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 14
    const-string v2, "isbiddinginstance"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M;->a:Lcom/ironsource/M;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/ironsource/M;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 22
    const-string v2, "custom_c"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/ironsource/le;->j:Lcom/ironsource/le$a;

    invoke-virtual {v0}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 28
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$s;->d:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$s;->a:Lcom/ironsource/X4;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$s;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/e$s;->c:Lcom/ironsource/x4;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/l;->b(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V

    :cond_0
    return-void
.end method
