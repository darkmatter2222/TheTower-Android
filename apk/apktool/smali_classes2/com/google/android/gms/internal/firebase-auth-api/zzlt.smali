.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzlu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzc()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb:I

    return-void
.end method

.method private final zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzc()I

    move-result v3

    add-int/2addr v2, v3

    .line 6
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdp;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb:I

    return v0
.end method

.method public final zza([B[BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    array-length v0, p2

    if-lt v0, p3, :cond_0

    .line 19
    array-length v0, p2

    invoke-static {p2, p3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza([B[B)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza()[B

    move-result-object v0

    invoke-interface {p1, p4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zzb([B[B)[B

    move-result-object p1

    .line 22
    filled-new-array {p2, p3, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
