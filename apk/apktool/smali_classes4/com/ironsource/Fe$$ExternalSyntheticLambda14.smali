.class public final synthetic Lcom/ironsource/Fe$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/xe;

.field public final synthetic f$1:Lcom/ironsource/qe;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/xe;Lcom/ironsource/qe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda14;->f$0:Lcom/ironsource/xe;

    iput-object p2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda14;->f$1:Lcom/ironsource/qe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda14;->f$0:Lcom/ironsource/xe;

    iget-object v1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda14;->f$1:Lcom/ironsource/qe;

    invoke-static {v0, v1}, Lcom/ironsource/Fe;->$r8$lambda$u2BnJDy6ukvbkL4-aPH_3xolbv8(Lcom/ironsource/xe;Lcom/ironsource/qe;)V

    return-void
.end method
