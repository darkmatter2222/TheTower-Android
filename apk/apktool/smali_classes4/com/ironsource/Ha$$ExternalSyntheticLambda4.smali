.class public final synthetic Lcom/ironsource/Ha$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field public final synthetic f$2:Lcom/ironsource/Ha;


# direct methods
.method public synthetic constructor <init>(ZLcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/Ha;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iput-object p3, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$2:Lcom/ironsource/Ha;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v2, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda4;->f$2:Lcom/ironsource/Ha;

    invoke-static {v0, v1, v2}, Lcom/ironsource/Ha;->$r8$lambda$6NsNJACQ4SD6PdYur2IOtAlUgWQ(ZLcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/Ha;)V

    return-void
.end method
