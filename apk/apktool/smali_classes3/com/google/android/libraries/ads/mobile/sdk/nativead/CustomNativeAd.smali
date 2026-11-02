.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 #2\u00020\u0001:\u0001#J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\nH&J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\nH&J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\nH&J\u0008\u0010\"\u001a\u00020!H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0004\u0018\u00010\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006$\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "adEventCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V",
        "assetNameSet",
        "",
        "",
        "getAssetNameSet",
        "()Ljava/util/Set;",
        "customFormatId",
        "getCustomFormatId",
        "()Ljava/lang/String;",
        "mediaContent",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "getMediaContent",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "onCustomClickListener",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;",
        "getOnCustomClickListener",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;",
        "setOnCustomClickListener",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;)V",
        "getDisplayOpenMeasurement",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/DisplayOpenMeasurement;",
        "getImage",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
        "assetName",
        "getText",
        "performClick",
        "",
        "recordImpression",
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
.field public static final ASSET_NAME_VIDEO:Ljava/lang/String; = "_videoMediaView"

.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;
.end method

.method public abstract getAssetNameSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomFormatId()Ljava/lang/String;
.end method

.method public abstract getDisplayOpenMeasurement()Lcom/google/android/libraries/ads/mobile/sdk/nativead/DisplayOpenMeasurement;
.end method

.method public abstract getImage(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
.end method

.method public abstract getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
.end method

.method public abstract getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;
.end method

.method public abstract getText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract performClick(Ljava/lang/String;)V
.end method

.method public abstract recordImpression()V
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V
.end method

.method public abstract setOnCustomClickListener(Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;)V
.end method
