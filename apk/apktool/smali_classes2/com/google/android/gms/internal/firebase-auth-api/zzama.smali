.class final Lcom/google/android/gms/internal/firebase-auth-api/zzama;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

.field private volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

.field private volatile zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zze:Z

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 32
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    if-eqz v1, :cond_3

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzl()I

    move-result v0

    return v0
.end method

.method final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object v0

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    monitor-exit p0

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;
    .locals 2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zzb()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzama;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    return-object v0

    .line 14
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzame;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzame;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
