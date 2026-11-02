.class public final synthetic Lcom/ironsource/Ha$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field public final synthetic f$1:Lcom/unity3d/mediation/LevelPlayAdError;

.field public final synthetic f$2:Lcom/ironsource/Ha;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;Lcom/ironsource/Ha;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iput-object p2, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/LevelPlayAdError;

    iput-object p3, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/Ha;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v1, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v2, p0, Lcom/ironsource/Ha$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/Ha;

    invoke-static {v0, v1, v2}, Lcom/ironsource/Ha;->$r8$lambda$udFVfIwx9gnfYccBLRvbTknJL8k(Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;Lcom/ironsource/Ha;)V

    return-void
.end method
