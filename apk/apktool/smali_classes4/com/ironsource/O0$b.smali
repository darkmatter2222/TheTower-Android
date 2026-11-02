.class Lcom/ironsource/O0$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O0;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/O0;


# direct methods
.method constructor <init>(Lcom/ironsource/O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/O0$b;->a:Lcom/ironsource/O0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0$b;->a:Lcom/ironsource/O0;

    invoke-static {v0}, Lcom/ironsource/O0;->-$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Kb;->b()V

    return-void
.end method
