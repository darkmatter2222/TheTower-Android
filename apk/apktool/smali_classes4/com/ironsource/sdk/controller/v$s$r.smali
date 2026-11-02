.class Lcom/ironsource/sdk/controller/v$s$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v$s;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/Z0;

.field final synthetic d:Lcom/ironsource/sdk/controller/v$s;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v$s;ILjava/lang/String;Lcom/ironsource/Z0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$s$r;->d:Lcom/ironsource/sdk/controller/v$s;

    iput p2, p0, Lcom/ironsource/sdk/controller/v$s$r;->a:I

    iput-object p3, p0, Lcom/ironsource/sdk/controller/v$s$r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/v$s$r;->c:Lcom/ironsource/Z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ironsource/sdk/controller/v$s$r;->a:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$r;->d:Lcom/ironsource/sdk/controller/v$s;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetc(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRVInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$r;->d:Lcom/ironsource/sdk/controller/v$s;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgety(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/y4;

    move-result-object v0

    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/v$s$r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/v$s$r;->c:Lcom/ironsource/Z0;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/v4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;Lcom/ironsource/Z0;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$s$r;->d:Lcom/ironsource/sdk/controller/v$s;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/v$s;->a:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgety(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/y4;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v$s$r;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/y4;->c(Ljava/lang/String;)V

    return-void
.end method
