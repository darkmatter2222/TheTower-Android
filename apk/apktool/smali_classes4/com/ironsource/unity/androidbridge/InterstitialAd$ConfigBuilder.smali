.class public Lcom/ironsource/unity/androidbridge/InterstitialAd$ConfigBuilder;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/unity/androidbridge/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBuilder"
.end annotation


# instance fields
.field private final builder:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;

    invoke-direct {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;

    invoke-virtual {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;->build()Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config;

    move-result-object v0

    return-object v0
.end method

.method public setBidFloor(D)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;->setBidFloor(D)Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config$Builder;

    return-void
.end method
