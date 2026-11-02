.class public final Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR \u0010\u0016\u001a\u00020\u000f8\u0017X\u0097\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0011\u001a\u0004\u0008\u001e\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;",
        "",
        "o",
        "I",
        "getMaxScreenHoldDurationSeconds",
        "()I",
        "maxScreenHoldDurationSeconds",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "p",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "getAdSize",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "adSize",
        "",
        "q",
        "Z",
        "getCustomClickGestureEnabled",
        "()Z",
        "getCustomClickGestureEnabled$annotations",
        "()V",
        "customClickGestureEnabled",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;",
        "r",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;",
        "getCustomClickSwipeGestureDirection",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;",
        "customClickSwipeGestureDirection",
        "s",
        "getCustomClickSwipeGestureTapsAllowed",
        "customClickSwipeGestureTapsAllowed",
        "Builder",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final o:I

.field private final p:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field private final q:Z

.field private final r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

.field private final s:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p11}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->o:I

    .line 4
    iput-object p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->p:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 5
    iput-boolean p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->q:Z

    .line 10
    iput-object p15, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move/from16 p1, p16

    .line 11
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->s:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)V

    return-void
.end method


# virtual methods
.method public getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->p:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v0
.end method

.method public getCustomClickGestureEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->q:Z

    return v0
.end method

.method public getCustomClickSwipeGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    return-object v0
.end method

.method public getCustomClickSwipeGestureTapsAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->s:Z

    return v0
.end method

.method public getMaxScreenHoldDurationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->o:I

    return v0
.end method
