.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0019\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "adEventCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;)V",
        "getAdMetadata",
        "Landroid/os/Bundle;",
        "getRewardItem",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;",
        "setImmersiveMode",
        "",
        "immersiveModeEnabled",
        "",
        "setServerSideVerificationOptions",
        "options",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;",
        "show",
        "activity",
        "Landroid/app/Activity;",
        "onUserEarnedRewardListener",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;",
        "Companion",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method public static loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;
.end method

.method public abstract getAdMetadata()Landroid/os/Bundle;
.end method

.method public abstract getRewardItem()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;)V
.end method

.method public abstract setImmersiveMode(Z)V
.end method

.method public abstract setServerSideVerificationOptions(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;)V
.end method

.method public abstract show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;)V
.end method
