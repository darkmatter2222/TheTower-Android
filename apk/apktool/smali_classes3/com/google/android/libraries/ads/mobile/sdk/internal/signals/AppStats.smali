.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0007R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;",
        "",
        "",
        "sequenceNumber",
        "Ljava/lang/String;",
        "",
        "priorRequestCount",
        "I",
        "priorRequestInSessionCount",
        "",
        "timeInSessionMilliseconds",
        "J",
        "",
        "priorRequestCountByFormat",
        "Ljava/util/Map;",
        "numberOfConsentFormsShown",
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
.field public final numberOfConsentFormsShown:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consent_form_action_identifier"
    .end annotation
.end field

.field public final priorRequestCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs"
    .end annotation
.end field

.field public final priorRequestCountByFormat:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs_by_format"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final priorRequestInSessionCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs_in_session"
    .end annotation
.end field

.field public final sequenceNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_num"
    .end annotation
.end field

.field public final timeInSessionMilliseconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_in_session"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/Map;I)V
    .locals 1

    const-string v0, "sequenceNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priorRequestCountByFormat"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    .line 5
    iput p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    .line 6
    iput-wide p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    .line 7
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    .line 10
    iput p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    iget-wide v5, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    iget p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    .line 1
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 2
    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 4
    iget-wide v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    iget v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AppStats(sequenceNumber="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", priorRequestCount="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priorRequestInSessionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeInSessionMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priorRequestCountByFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfConsentFormsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
