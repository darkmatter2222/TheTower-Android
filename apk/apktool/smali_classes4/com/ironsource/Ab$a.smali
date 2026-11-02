.class Lcom/ironsource/Ab$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ab;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ab;


# direct methods
.method constructor <init>(Lcom/ironsource/Ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ab$a;->a:Lcom/ironsource/Ab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab$a;->a:Lcom/ironsource/Ab;

    invoke-static {v0}, Lcom/ironsource/Ab;->-$$Nest$fgetf(Lcom/ironsource/Ab;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
