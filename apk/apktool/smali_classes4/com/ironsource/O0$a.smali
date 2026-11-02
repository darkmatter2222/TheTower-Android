.class Lcom/ironsource/O0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O0;->c()Lcom/ironsource/zb;
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
    iput-object p1, p0, Lcom/ironsource/O0$a;->a:Lcom/ironsource/O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0$a;->a:Lcom/ironsource/O0;

    invoke-static {v0}, Lcom/ironsource/O0;->-$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Kb;->b()V

    return-void
.end method
