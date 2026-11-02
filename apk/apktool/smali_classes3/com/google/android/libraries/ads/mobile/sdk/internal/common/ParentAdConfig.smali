.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0008R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0008R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0008R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0011R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0008R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;",
        "",
        "",
        "innerAdUnitId",
        "Ljava/lang/String;",
        "adSourceName",
        "",
        "clickUrls",
        "Ljava/util/List;",
        "impressionUrls",
        "manualTrackingUrls",
        "fillUrls",
        "videoStartUrls",
        "videoRewardsUrls",
        "videoCompleteUrls",
        "",
        "isClosableAreaDisabled",
        "Z",
        "Lcom/google/gson/JsonObject;",
        "recursiveRequestParameters",
        "Lcom/google/gson/JsonObject;",
        "isAnalyticsLoggingEnabled",
        "Landroid/os/Bundle;",
        "rewardsBundles",
        "Lcom/google/gson/JsonArray;",
        "recursiveSignalCollectionConfig",
        "Lcom/google/gson/JsonArray;",
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
.field public final adSourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_source_name"
    .end annotation
.end field

.field public final clickUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fillUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fill_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final impressionUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imp_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final innerAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initial_ad_unit_id"
    .end annotation
.end field

.field public final isAnalyticsLoggingEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_analytics_logging_enabled"
    .end annotation
.end field

.field public final isClosableAreaDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_closable_area_disabled"
    .end annotation
.end field

.field public final manualTrackingUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manual_tracking_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final recursiveRequestParameters:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recursive_request_parameters"
    .end annotation
.end field

.field public final recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recursive_signal_collection"
    .end annotation
.end field

.field public rewardsBundles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final videoCompleteUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_complete_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final videoRewardsUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_reward_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final videoStartUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_start_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/google/gson/JsonObject;ZLjava/util/List;Lcom/google/gson/JsonArray;)V
    .locals 1

    const-string v0, "innerAdUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickUrls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionUrls"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualTrackingUrls"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillUrls"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStartUrls"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoRewardsUrls"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCompleteUrls"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recursiveRequestParameters"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    .line 9
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    .line 10
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    .line 11
    iput-object p9, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    .line 12
    iput-boolean p10, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    .line 13
    iput-object p11, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    .line 16
    iput-boolean p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    .line 17
    iput-object p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    .line 18
    iput-object p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    .line 1
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    .line 5
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    .line 7
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    .line 9
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    .line 11
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    .line 13
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    .line 15
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 16
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    :cond_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    .line 17
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 18
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    iget-boolean v10, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    iget-boolean v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "ParentAdConfig(innerAdUnitId="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manualTrackingUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoRewardsUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCompleteUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isClosableAreaDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recursiveRequestParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnalyticsLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardsBundles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recursiveSignalCollectionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
