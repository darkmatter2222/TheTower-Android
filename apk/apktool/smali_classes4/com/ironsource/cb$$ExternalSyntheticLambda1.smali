.class public final synthetic Lcom/ironsource/cb$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/cb;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/cb;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/cb;

    iput-wide p2, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/cb;

    iget-wide v1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/cb;->$r8$lambda$Js6qc4w0Rg9lqSiDmmt4AagOAAY(Lcom/ironsource/cb;J)V

    return-void
.end method
