.class public final synthetic Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->$r8$lambda$eSO9nif1RS67xGX2c1Gu4e8hAb4(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method
