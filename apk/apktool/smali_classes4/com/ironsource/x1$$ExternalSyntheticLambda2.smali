.class public final synthetic Lcom/ironsource/x1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/x1;

.field public final synthetic f$1:Lcom/ironsource/B1;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/x1;Lcom/ironsource/B1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/x1;

    iput-object p2, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/B1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/x1;

    iget-object v1, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/B1;

    invoke-static {v0, v1}, Lcom/ironsource/x1;->$r8$lambda$JCHq-cTL7h_U7cmsPERT9Nmpe-4(Lcom/ironsource/x1;Lcom/ironsource/B1;)V

    return-void
.end method
