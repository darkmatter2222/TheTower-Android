.class public Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/unity/androidbridge/BannerAd$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

.field private description:Ljava/lang/String;

.field private displayOnLoad:Z

.field private respectSafeArea:Z

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-direct {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    .line 342
    const-string v0, "BottomCenter"

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->description:Ljava/lang/String;

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->displayOnLoad:Z

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->respectSafeArea:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/ironsource/unity/androidbridge/BannerAd$Config;
    .locals 9

    .line 375
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->build()Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;

    move-result-object v2

    .line 376
    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$Config;

    iget-object v3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->description:Ljava/lang/String;

    iget v4, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->x:F

    iget v5, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->y:F

    iget-boolean v6, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->displayOnLoad:Z

    iget-boolean v7, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->respectSafeArea:Z

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/unity/androidbridge/BannerAd$Config;-><init>(Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;Ljava/lang/String;FFZZLcom/ironsource/unity/androidbridge/BannerAd$1;)V

    return-object v1
.end method

.method public setBidFloor(D)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->setBidFloor(D)Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    return-void
.end method

.method public setDisplayOnLoad(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->displayOnLoad:Z

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->setPlacementName(Ljava/lang/String;)Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    return-void
.end method

.method public setPosition(Ljava/lang/String;FF)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->description:Ljava/lang/String;

    .line 362
    iput p2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->x:F

    .line 363
    iput p3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->y:F

    return-void
.end method

.method public setRespectSafeArea(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->respectSafeArea:Z

    return-void
.end method

.method public setSize(Lcom/unity3d/mediation/LevelPlayAdSize;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;->builder:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->setAdSize(Lcom/unity3d/mediation/LevelPlayAdSize;)Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    return-void
.end method
