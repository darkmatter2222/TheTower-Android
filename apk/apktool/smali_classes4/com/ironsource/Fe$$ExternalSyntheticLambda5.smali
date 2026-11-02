.class public final synthetic Lcom/ironsource/Fe$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Fe;

.field public final synthetic f$1:Lcom/ironsource/se;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Fe;Lcom/ironsource/se;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/Fe;

    iput-object p2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/se;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/Fe;

    iget-object v1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/se;

    invoke-static {v0, v1}, Lcom/ironsource/Fe;->$r8$lambda$4dfx0oE5sk1cVAz_o6rX0hbsTS4(Lcom/ironsource/Fe;Lcom/ironsource/se;)V

    return-void
.end method
