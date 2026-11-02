.class public final Lads_mobile_sdk/p73;
.super Lads_mobile_sdk/gs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAd;


# static fields
.field public static final d:Lads_mobile_sdk/n73;

.field public static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field public final c:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lads_mobile_sdk/p73;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v3

    sput-object v1, Lads_mobile_sdk/p73;->e:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/n73;

    .line 22
    invoke-direct {v0}, Lads_mobile_sdk/n73;-><init>()V

    .line 23
    sput-object v0, Lads_mobile_sdk/p73;->d:Lads_mobile_sdk/n73;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/un1;)V
    .locals 2

    .line 1
    const-string v0, "internalRewardedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lads_mobile_sdk/gs;-><init>(Lads_mobile_sdk/un1;)V

    .line 22
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 24
    new-instance v1, Lads_mobile_sdk/o73;

    invoke-direct {v1, p1}, Lads_mobile_sdk/o73;-><init>(Lads_mobile_sdk/un1;)V

    const/4 p1, 0x0

    .line 25
    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/p73;->c:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAdEventCallback;
    .locals 3

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/p73;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/p73;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 22
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAdEventCallback;

    return-object v0
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAdEventCallback;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/p73;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/p73;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 22
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
