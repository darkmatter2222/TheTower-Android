.class Lcom/ironsource/zb$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/zb;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/zb;


# direct methods
.method constructor <init>(Lcom/ironsource/zb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgeta(Lcom/ironsource/zb;)Lcom/ironsource/lifecycle/b;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetf(Lcom/ironsource/zb;)Lcom/ironsource/qa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/qa;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/jg;->b()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetb(Lcom/ironsource/zb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
