.class public final synthetic Lcom/ironsource/Ef$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/fg;

.field public final synthetic f$1:Lcom/ironsource/environment/thread/a;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/fg;

    iput-object p2, p0, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/environment/thread/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/fg;

    iget-object v1, p0, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/environment/thread/a;

    invoke-static {v0, v1}, Lcom/ironsource/Ef;->$r8$lambda$TzZFnzzgQ3qJGfKpmVrMjI5FCJg(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V

    return-void
.end method
