.class public final synthetic Lcom/ironsource/cb$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/cb;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/unity3d/mediation/LevelPlayAdError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/cb;JLcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/cb;

    iput-wide p2, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$2:Lcom/unity3d/mediation/LevelPlayAdError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/cb;

    iget-wide v1, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lcom/ironsource/cb$$ExternalSyntheticLambda3;->f$2:Lcom/unity3d/mediation/LevelPlayAdError;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/cb;->$r8$lambda$l_fCU39VLn4KlWKYNqgcl1KHFW8(Lcom/ironsource/cb;JLcom/unity3d/mediation/LevelPlayAdError;)V

    return-void
.end method
