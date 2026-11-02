.class public final Lads_mobile_sdk/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:Lkotlin/Pair;

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:Z

.field public final j:Ljava/lang/Double;


# direct methods
.method public constructor <init>(IZZILkotlin/Pair;IIFZLjava/lang/Double;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lads_mobile_sdk/ho;->a:I

    .line 99
    iput-boolean p2, p0, Lads_mobile_sdk/ho;->b:Z

    .line 100
    iput-boolean p3, p0, Lads_mobile_sdk/ho;->c:Z

    .line 101
    iput p4, p0, Lads_mobile_sdk/ho;->d:I

    .line 102
    iput-object p5, p0, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    .line 103
    iput p6, p0, Lads_mobile_sdk/ho;->f:I

    .line 104
    iput p7, p0, Lads_mobile_sdk/ho;->g:I

    .line 105
    iput p8, p0, Lads_mobile_sdk/ho;->h:F

    .line 106
    iput-boolean p9, p0, Lads_mobile_sdk/ho;->i:Z

    .line 107
    iput-object p10, p0, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .locals 2

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lads_mobile_sdk/ho;->a:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->audioMode:I

    .line 111
    iget-boolean v0, p0, Lads_mobile_sdk/ho;->b:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isMusicActive:Z

    .line 112
    iget-boolean v0, p0, Lads_mobile_sdk/ho;->c:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isSpeakerPhoneOn:Z

    .line 113
    iget v0, p0, Lads_mobile_sdk/ho;->d:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->musicVolume:I

    .line 114
    iget-object v0, p0, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->minMusicVolume:Ljava/lang/Integer;

    .line 116
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxMusicVolume:Ljava/lang/Integer;

    .line 118
    :cond_0
    iget v0, p0, Lads_mobile_sdk/ho;->f:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->ringerMode:I

    .line 119
    iget v0, p0, Lads_mobile_sdk/ho;->g:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->ringerVolume:I

    .line 120
    iget v0, p0, Lads_mobile_sdk/ho;->h:F

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appVolume:F

    .line 121
    iget-boolean v0, p0, Lads_mobile_sdk/ho;->i:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isAppMuted:Z

    .line 122
    iget-object v0, p0, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->musicVolumePercent:Ljava/lang/Double;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/ho;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/ho;

    iget v1, p0, Lads_mobile_sdk/ho;->a:I

    iget v3, p1, Lads_mobile_sdk/ho;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lads_mobile_sdk/ho;->b:Z

    iget-boolean v3, p1, Lads_mobile_sdk/ho;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lads_mobile_sdk/ho;->c:Z

    iget-boolean v3, p1, Lads_mobile_sdk/ho;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lads_mobile_sdk/ho;->d:I

    iget v3, p1, Lads_mobile_sdk/ho;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    iget-object v3, p1, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lads_mobile_sdk/ho;->f:I

    iget v3, p1, Lads_mobile_sdk/ho;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lads_mobile_sdk/ho;->g:I

    iget v3, p1, Lads_mobile_sdk/ho;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lads_mobile_sdk/ho;->h:F

    iget v3, p1, Lads_mobile_sdk/ho;->h:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lads_mobile_sdk/ho;->i:Z

    iget-boolean v3, p1, Lads_mobile_sdk/ho;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    iget-object p1, p1, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lads_mobile_sdk/ho;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/ho;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    :cond_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/ho;->c:Z

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/ho;->d:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lkotlin/Pair;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/ho;->f:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget v2, p0, Lads_mobile_sdk/ho;->g:I

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget v2, p0, Lads_mobile_sdk/ho;->h:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lads_mobile_sdk/ho;->i:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lads_mobile_sdk/ho;->a:I

    iget-boolean v1, p0, Lads_mobile_sdk/ho;->b:Z

    iget-boolean v2, p0, Lads_mobile_sdk/ho;->c:Z

    iget v3, p0, Lads_mobile_sdk/ho;->d:I

    iget-object v4, p0, Lads_mobile_sdk/ho;->e:Lkotlin/Pair;

    iget v5, p0, Lads_mobile_sdk/ho;->f:I

    iget v6, p0, Lads_mobile_sdk/ho;->g:I

    iget v7, p0, Lads_mobile_sdk/ho;->h:F

    iget-boolean v8, p0, Lads_mobile_sdk/ho;->i:Z

    iget-object v9, p0, Lads_mobile_sdk/ho;->j:Ljava/lang/Double;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AudioSignal(audioMode="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", isMusicActive="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSpeakerPhoneOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minMaxMusicVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ringerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ringerVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicVolumePercent="

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
