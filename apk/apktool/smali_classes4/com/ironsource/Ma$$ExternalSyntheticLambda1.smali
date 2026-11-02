.class public final synthetic Lcom/ironsource/Ma$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ma;

.field public final synthetic f$1:Lcom/ironsource/m3$c;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Ma;

    iput-object p2, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/m3$c;

    iput-wide p3, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Ma;

    iget-object v1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/m3$c;

    iget-wide v2, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/Ma;->$r8$lambda$kruJZHeNKx4I_UKueHZoJc0PTac(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V

    return-void
.end method
