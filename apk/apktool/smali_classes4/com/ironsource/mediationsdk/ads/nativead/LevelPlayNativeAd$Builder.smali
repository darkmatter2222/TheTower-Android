.class public final Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;-><init>(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getMListener$mediationsdk_release()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->b:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;

    return-object v0
.end method

.method public final getMPlacementName$mediationsdk_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setMListener$mediationsdk_release(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->b:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;

    return-void
.end method

.method public final setMPlacementName$mediationsdk_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method public final withActivity(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity is updated to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withListener(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;)Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->b:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;

    return-object p0
.end method

.method public final withPlacementName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
