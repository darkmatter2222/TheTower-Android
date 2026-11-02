.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017J\u0008\u0010\u0010\u001a\u00020\u0011H&J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0018\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "adEventCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V",
        "position",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "getPosition",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        "presentationScope",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "getPresentationScope",
        "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        "hide",
        "",
        "show",
        "activity",
        "Landroid/app/Activity;",
        "options",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;",
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
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;
.end method

.method public abstract getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
.end method

.method public abstract getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
.end method

.method public abstract hide()V
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V
.end method

.method public abstract show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;)V
.end method
