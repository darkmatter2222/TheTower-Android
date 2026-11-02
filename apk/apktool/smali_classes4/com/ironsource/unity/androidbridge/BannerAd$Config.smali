.class public Lcom/ironsource/unity/androidbridge/BannerAd$Config;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/unity/androidbridge/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/unity/androidbridge/BannerAd$Config$Builder;
    }
.end annotation


# instance fields
.field final config:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;

.field final description:Ljava/lang/String;

.field final displayOnLoad:Z

.field final respectSafeArea:Z

.field final x:F

.field final y:F


# direct methods
.method private constructor <init>(Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;Ljava/lang/String;FFZZ)V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->config:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;

    .line 333
    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->description:Ljava/lang/String;

    .line 334
    iput p3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->x:F

    .line 335
    iput p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->y:F

    .line 336
    iput-boolean p5, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->displayOnLoad:Z

    .line 337
    iput-boolean p6, p0, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->respectSafeArea:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;Ljava/lang/String;FFZZLcom/ironsource/unity/androidbridge/BannerAd$1;)V
    .locals 0

    .line 316
    invoke-direct/range {p0 .. p6}, Lcom/ironsource/unity/androidbridge/BannerAd$Config;-><init>(Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;Ljava/lang/String;FFZZ)V

    return-void
.end method
