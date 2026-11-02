.class final Lcom/google/android/gms/internal/nearby/zztf;
.super Lcom/google/android/gms/internal/nearby/zzth;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzth;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzth;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzth;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    const-string p1, ":"

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zztf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".withSeparator(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztf;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLjava/lang/CharSequence;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nearby/zzte;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zztf;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/nearby/zzth;->zza([BLjava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method final zzb(Ljava/lang/Appendable;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztf;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzta;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/gms/internal/nearby/zzta;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p3, v1, p2, p1, p4}, Lcom/google/android/gms/internal/nearby/zzth;->zzb(Ljava/lang/Appendable;[BII)V

    return-void
.end method

.method final zzc(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzth;->zzc(I)I

    move-result p1

    return p1
.end method

.method final zzd(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzth;->zzd(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztf;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x2

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/nearby/zztj;->zza(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public final zze(Ljava/lang/String;I)Lcom/google/android/gms/internal/nearby/zzth;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method final zzf(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztf;->zza:Lcom/google/android/gms/internal/nearby/zzth;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzth;->zzf(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
