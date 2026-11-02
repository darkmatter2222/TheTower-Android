.class public final synthetic Lcom/ironsource/Fe$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Fe;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Fe;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$0:Lcom/ironsource/Fe;

    iput-object p2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$0:Lcom/ironsource/Fe;

    iget-object v1, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/ironsource/Fe$$ExternalSyntheticLambda7;->f$2:Landroid/content/Context;

    check-cast p1, Lcom/ironsource/qe;

    invoke-static {v0, v1, v2, p1}, Lcom/ironsource/Fe;->$r8$lambda$_K55S2jY_hUEYkc4gX9c2BHt1do(Lcom/ironsource/Fe;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/ironsource/qe;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
