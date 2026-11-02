.class public Lcom/facebook/ads/NativeAd$NativeOptions;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeOptions"
.end annotation


# instance fields
.field private mDisableFullScreen:Ljava/lang/Boolean;

.field private mHideMediaControls:Ljava/lang/Boolean;

.field private mUnMuteVolume:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mDisableFullScreen:Ljava/lang/Boolean;

    .line 306
    iput-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mHideMediaControls:Ljava/lang/Boolean;

    .line 307
    iput-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mUnMuteVolume:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getDisableFullScreen()Ljava/lang/Boolean;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mDisableFullScreen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHideMediaControls()Ljava/lang/Boolean;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mHideMediaControls:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUnMuteVolume()Ljava/lang/Boolean;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mUnMuteVolume:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDisableFullScreen(Ljava/lang/Boolean;)Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mDisableFullScreen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setHideMediaControls(Ljava/lang/Boolean;)Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mHideMediaControls:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setUnMuteVolume(Ljava/lang/Boolean;)Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$NativeOptions;->mUnMuteVolume:Ljava/lang/Boolean;

    return-object p0
.end method
