.class final Lcom/google/android/play/agesignals/zzj;
.super Lcom/google/android/play/agesignals/AgeSignalsResult;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field private final zza:Ljava/lang/Integer;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Ljava/lang/Integer;

.field private final zzd:Ljava/util/Date;

.field private final zze:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Lcom/google/android/play/agesignals/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/agesignals/AgeSignalsResult;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzj;->zza:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/play/agesignals/zzj;->zzb:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/play/agesignals/zzj;->zzc:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/play/agesignals/zzj;->zzd:Ljava/util/Date;

    iput-object p5, p0, Lcom/google/android/play/agesignals/zzj;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ageLower()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zzb:Ljava/lang/Integer;

    return-object v0
.end method

.method public final ageUpper()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zzc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/agesignals/AgeSignalsResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lcom/google/android/play/agesignals/AgeSignalsResult;

    iget-object v1, p0, Lcom/google/android/play/agesignals/zzj;->zza:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->userStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->userStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/google/android/play/agesignals/zzj;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageLower()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageLower()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/google/android/play/agesignals/zzj;->zzc:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageUpper()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageUpper()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/google/android/play/agesignals/zzj;->zzd:Ljava/util/Date;

    if-nez v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->mostRecentApprovalDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->mostRecentApprovalDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/google/android/play/agesignals/zzj;->zze:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->installId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->installId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    return v0

    :cond_7
    :goto_5
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zza:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zzb:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v0, v3

    .line 5
    iget-object v4, p0, Lcom/google/android/play/agesignals/zzj;->zzc:Ljava/lang/Integer;

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v4

    :goto_2
    mul-int/2addr v0, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 5
    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zzd:Ljava/util/Date;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 5
    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zze:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public final installId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final mostRecentApprovalDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zzd:Ljava/util/Date;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zzd:Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AgeSignalsResult{userStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zza:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ageLower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zzb:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ageUpper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/play/agesignals/zzj;->zzc:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mostRecentApprovalDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", installId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zze:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final userStatus()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzj;->zza:Ljava/lang/Integer;

    return-object v0
.end method
