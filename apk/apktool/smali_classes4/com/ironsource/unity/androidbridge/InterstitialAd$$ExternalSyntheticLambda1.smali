.class public final synthetic Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

.field public final synthetic f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-static {v0, v1}, Lcom/ironsource/unity/androidbridge/InterstitialAd;->lambda$setImpressionDataListener$0(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method
