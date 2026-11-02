.class public final synthetic Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final onImpressionSuccess(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    invoke-static {v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd;->lambda$setImpressionDataListener$2(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method
