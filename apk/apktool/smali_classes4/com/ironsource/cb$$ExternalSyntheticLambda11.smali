.class public final synthetic Lcom/ironsource/cb$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ad;

.field public final synthetic f$1:Lcom/unity3d/mediation/rewarded/LevelPlayReward;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ad;Lcom/unity3d/mediation/rewarded/LevelPlayReward;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$0:Lcom/ironsource/ad;

    iput-object p2, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$1:Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    iput-object p3, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$0:Lcom/ironsource/ad;

    iget-object v1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$1:Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    iget-object v2, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ironsource/cb;->$r8$lambda$GLCpdIQKgEVROXpbjQbl53y44Uw(Lcom/ironsource/ad;Lcom/unity3d/mediation/rewarded/LevelPlayReward;Ljava/lang/String;)V

    return-void
.end method
