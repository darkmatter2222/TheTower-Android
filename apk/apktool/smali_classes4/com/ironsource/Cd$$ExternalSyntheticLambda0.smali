.class public final synthetic Lcom/ironsource/Cd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/zd;

.field public final synthetic f$1:Lcom/ironsource/Cd;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/zd;Lcom/ironsource/Cd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/zd;

    iput-object p2, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/Cd;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/zd;

    iget-object v1, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/Cd;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/ironsource/Cd;->$r8$lambda$ETOTZiVKvZUi0ovpWlZP_zgYcQY(Lcom/ironsource/zd;Lcom/ironsource/Cd;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
