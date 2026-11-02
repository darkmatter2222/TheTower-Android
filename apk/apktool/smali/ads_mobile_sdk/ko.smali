.class public final Lads_mobile_sdk/ko;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public final c:Lads_mobile_sdk/j53;

.field public final d:I

.field public final e:Lads_mobile_sdk/om2;

.field public final f:J

.field public final g:J

.field public h:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;JJLkotlinx/coroutines/CompletableJob;)V
    .locals 1

    .line 1
    const-string v0, "webProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    .line 6
    iput p4, p0, Lads_mobile_sdk/ko;->d:I

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    .line 8
    iput-wide p6, p0, Lads_mobile_sdk/ko;->f:J

    .line 9
    iput-wide p8, p0, Lads_mobile_sdk/ko;->g:J

    .line 10
    iput-object p10, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/ko;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/ko;

    iget-object v1, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v3, p1, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    iget-object v3, p1, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lads_mobile_sdk/ko;->d:I

    iget v3, p1, Lads_mobile_sdk/ko;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    iget-object v3, p1, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lads_mobile_sdk/ko;->f:J

    iget-wide v5, p1, Lads_mobile_sdk/ko;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lads_mobile_sdk/ko;->g:J

    iget-wide v5, p1, Lads_mobile_sdk/ko;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    iget-object p1, p1, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/ko;->d:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    invoke-virtual {v2}, Lads_mobile_sdk/om2;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lads_mobile_sdk/ko;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lads_mobile_sdk/ko;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v2, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    iget v3, p0, Lads_mobile_sdk/ko;->d:I

    iget-object v4, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    iget-wide v5, p0, Lads_mobile_sdk/ko;->f:J

    iget-wide v7, p0, Lads_mobile_sdk/ko;->g:J

    iget-object v9, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AutoRefreshEntry(webProperty="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", adRequest="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfAdsRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scheduleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetExecutionTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", job="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
