.class public final Lcom/unity3d/ads/core/extensions/ShowStatusExtensionsKt;
.super Ljava/lang/Object;
.source "ShowStatusExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/extensions/ShowStatusExtensionsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toUnityAdsShowCompletionState",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;",
        "Lcom/unity3d/ads/adplayer/model/ShowStatus;",
        "defaultShowCompletionState",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toUnityAdsShowCompletionState(Lcom/unity3d/ads/adplayer/model/ShowStatus;Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultShowCompletionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/unity3d/ads/core/extensions/ShowStatusExtensionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/model/ShowStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    .line 10
    sget-object p0, Lcom/unity3d/ads/core/extensions/ShowStatusExtensionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    .line 13
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 9
    :cond_3
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0

    .line 8
    :cond_4
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0
.end method
