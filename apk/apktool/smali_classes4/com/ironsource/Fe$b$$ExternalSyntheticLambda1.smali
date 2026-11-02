.class public final synthetic Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/ironsource/qe;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/qe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/qe;

    invoke-static {v0, v1}, Lcom/ironsource/Fe$b;->$r8$lambda$KysZc99723B_XOIsZtNc0oiZDhc(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V

    return-void
.end method
