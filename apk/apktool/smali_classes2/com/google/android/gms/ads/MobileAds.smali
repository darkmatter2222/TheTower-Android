.class public final Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/android/gms/ads/MobileAds;",
        "",
        "Lcom/google/android/gms/ads/RequestConfiguration;",
        "getRequestConfiguration",
        "()Lcom/google/android/gms/ads/RequestConfiguration;",
        "Lcom/google/android/gms/ads/VersionInfo;",
        "getVersion",
        "()Lcom/google/android/gms/ads/VersionInfo;",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/gms/ads/MobileAds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/MobileAds;

    invoke-direct {v0}, Lcom/google/android/gms/ads/MobileAds;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/MobileAds;->INSTANCE:Lcom/google/android/gms/ads/MobileAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/RequestConfiguration;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v5

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getAgeRestrictedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->UNSPECIFIED:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    .line 8
    const-class v6, Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    invoke-static {v6, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/RequestConfiguration;-><init>(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/AgeRestrictedTreatment;)V

    return-object v1
.end method

.method public static final getVersion()Lcom/google/android/gms/ads/VersionInfo;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/VersionInfo;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;->getMajorVersion()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;->getMinorVersion()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;->getMicroVersion()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v1
.end method
