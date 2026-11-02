.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzln;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HPKE Parameters (Variant: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", KemId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", KdfId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AeadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    return-object v0
.end method
