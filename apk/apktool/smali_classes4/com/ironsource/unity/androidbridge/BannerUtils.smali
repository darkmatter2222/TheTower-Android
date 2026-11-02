.class public Lcom/ironsource/unity/androidbridge/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdaptiveAdSize(I)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 1

    .line 8
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/mediation/LevelPlayAdSize;->createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method
