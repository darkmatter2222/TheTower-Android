.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;",
        "",
        "",
        "",
        "noFillUrls",
        "Ljava/util/List;",
        "",
        "refreshIntervalInSeconds",
        "J",
        "gwsQueryId",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonObject;",
        "responseInfoExtras",
        "Lcom/google/gson/JsonObject;",
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
.field public final gwsQueryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gws_query_id"
    .end annotation
.end field

.field public final noFillUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nofill_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final refreshIntervalInSeconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_interval"
    .end annotation
.end field

.field public final responseInfoExtras:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_info_extras"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    const-string v0, "noFillUrls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gwsQueryId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseInfoExtras"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->noFillUrls:Ljava/util/List;

    .line 4
    iput-wide p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->refreshIntervalInSeconds:J

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->gwsQueryId:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->responseInfoExtras:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->noFillUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->noFillUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->refreshIntervalInSeconds:J

    iget-wide v5, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->refreshIntervalInSeconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->gwsQueryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->gwsQueryId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->responseInfoExtras:Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->responseInfoExtras:Lcom/google/gson/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->noFillUrls:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->refreshIntervalInSeconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->gwsQueryId:Ljava/lang/String;

    .line 1
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->responseInfoExtras:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->noFillUrls:Ljava/util/List;

    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->refreshIntervalInSeconds:J

    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->gwsQueryId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;->responseInfoExtras:Lcom/google/gson/JsonObject;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ParentCommonConfig(noFillUrls="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", refreshIntervalInSeconds="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gwsQueryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseInfoExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
