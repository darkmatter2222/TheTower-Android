.class public final Lcom/unity3d/ads/RewardedOffersAd$show$1$2;
.super Ljava/lang/Object;
.source "RewardedOffersAd.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/model/Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedOffersAd$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/RewardedOffersAd$show$1$2$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/unity3d/ads/RewardedOffersAd$show$1$2",
        "Lcom/unity3d/ads/core/data/model/Listeners;",
        "onLeftApplication",
        "",
        "placementId",
        "",
        "onError",
        "error",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;",
        "message",
        "onStart",
        "onClick",
        "onComplete",
        "state",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;",
        "onRewarded",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/unity3d/ads/RewardedOffersShowListener;

.field final synthetic this$0:Lcom/unity3d/ads/RewardedOffersAd;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/RewardedOffersShowListener;Lcom/unity3d/ads/RewardedOffersAd;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/RewardedOffersShowListener;->onClicked(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/unity3d/ads/RewardedOffersAd$show$1$2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 164
    sget-object p1, Lcom/unity3d/ads/ShowFinishState;->SKIPPED:Lcom/unity3d/ads/ShowFinishState;

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 163
    :cond_1
    sget-object p1, Lcom/unity3d/ads/ShowFinishState;->COMPLETED:Lcom/unity3d/ads/ShowFinishState;

    .line 167
    :goto_0
    iget-object p2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-interface {p2, v0, p1}, Lcom/unity3d/ads/RewardedOffersShowListener;->onCompleted(Ljava/lang/Object;Lcom/unity3d/ads/ShowFinishState;)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 2

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object p1, Lcom/unity3d/ads/RewardedOffersAd$show$1$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 136
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_0

    .line 135
    :cond_0
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_0

    .line 134
    :cond_1
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_0

    .line 133
    :cond_2
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    if-eqz p2, :cond_3

    .line 140
    iget-object p3, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    .line 141
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    .line 142
    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v1

    .line 143
    invoke-static {p1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getShowErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-direct {v0, v1, p1}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-interface {p2, p3, v0}, Lcom/unity3d/ads/RewardedOffersShowListener;->onFailed(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V

    :cond_3
    return-void
.end method

.method public onLeftApplication(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRewarded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/RewardedOffersShowListener;->onStarted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
