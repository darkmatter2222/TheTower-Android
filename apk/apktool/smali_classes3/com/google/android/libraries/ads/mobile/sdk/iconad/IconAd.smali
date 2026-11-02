.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cR\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000fR\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001d\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "adChoicesInfo",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;",
        "getAdChoicesInfo",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;",
        "adEventCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;)V",
        "callToAction",
        "",
        "getCallToAction",
        "()Ljava/lang/String;",
        "headline",
        "getHeadline",
        "icon",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
        "getIcon",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
        "packageName",
        "getPackageName",
        "starRating",
        "",
        "getStarRating",
        "()Ljava/lang/Double;",
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
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;",
            "I",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use load(IconAdRequest, Int, IconAdLoadCallback) instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;)V

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method public static loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getAdChoicesInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;
.end method

.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getHeadline()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getStarRating()Ljava/lang/Double;
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;)V
.end method
