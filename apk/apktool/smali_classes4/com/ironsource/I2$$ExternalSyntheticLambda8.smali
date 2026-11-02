.class public final synthetic Lcom/ironsource/I2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Lcom/ironsource/I2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/ironsource/I2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda8;->f$1:Lcom/ironsource/I2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda8;->f$1:Lcom/ironsource/I2;

    invoke-static {v0, v1}, Lcom/ironsource/I2;->$r8$lambda$A72EO8H4tnBmNBSJKHPMqR1u9V0(Ljava/lang/Throwable;Lcom/ironsource/I2;)V

    return-void
.end method
