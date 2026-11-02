.class public final synthetic Lcom/ironsource/Fe$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ae;

.field public final synthetic f$1:Lcom/ironsource/Fe;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ae;Lcom/ironsource/Fe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Ae;

    iput-object p2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda3;->f$1:Lcom/ironsource/Fe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Ae;

    iget-object v1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda3;->f$1:Lcom/ironsource/Fe;

    invoke-static {v0, v1}, Lcom/ironsource/Fe;->$r8$lambda$PvpdDGIgaehlaHWN2SpKHv69HEk(Lcom/ironsource/Ae;Lcom/ironsource/Fe;)V

    return-void
.end method
