.class public final synthetic Lcom/ironsource/Fe$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Fe;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Fe;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda11;->f$0:Lcom/ironsource/Fe;

    iput-object p2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda11;->f$0:Lcom/ironsource/Fe;

    iget-object v1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/ironsource/qe;

    invoke-static {v0, v1, p1}, Lcom/ironsource/Fe;->$r8$lambda$Y-_XBY-BneiR3MBNl5VBFYt58Og(Lcom/ironsource/Fe;Landroid/content/Context;Lcom/ironsource/qe;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
