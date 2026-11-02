.class final Lcom/google/android/play/core/hsdp/service/zzd;
.super Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Landroid/os/IBinder;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/IBinder;Lcom/google/android/play/core/hsdp/service/zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->targetAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->referrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->extraQueryParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->windowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->windowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final extraQueryParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final referrer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final targetAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HsdpPrewarmRequest{targetAppPackageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", referrer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extraQueryParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", windowToken="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final windowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    return-object v0
.end method
