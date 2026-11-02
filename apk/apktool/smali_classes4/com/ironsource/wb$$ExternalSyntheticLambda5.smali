.class public final synthetic Lcom/ironsource/wb$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/mediation/LevelPlayInitListener;

.field public final synthetic f$1:Lcom/ironsource/ab;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/mediation/LevelPlayInitListener;Lcom/ironsource/ab;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda5;->f$0:Lcom/unity3d/mediation/LevelPlayInitListener;

    iput-object p2, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/ab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda5;->f$0:Lcom/unity3d/mediation/LevelPlayInitListener;

    iget-object v1, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/ab;

    invoke-static {v0, v1}, Lcom/ironsource/wb;->$r8$lambda$Ho4pwnMGozBVseriN3vuPxqmUVk(Lcom/unity3d/mediation/LevelPlayInitListener;Lcom/ironsource/ab;)V

    return-void
.end method
