.class public final synthetic Lcom/ironsource/H$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/T0;

.field public final synthetic f$1:Lcom/ironsource/H;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/H;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/H$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/T0;

    iput-object p2, p0, Lcom/ironsource/H$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/H;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/H$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/T0;

    iget-object v1, p0, Lcom/ironsource/H$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/H;

    invoke-static {v0, v1}, Lcom/ironsource/H;->$r8$lambda$_6c3VVTO8b1T2_DkkQDo8sHDO6w(Lcom/ironsource/T0;Lcom/ironsource/H;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    return-object v0
.end method
