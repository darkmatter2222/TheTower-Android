.class final Lcom/google/android/gms/internal/firebase-auth-api/zznc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;->zza([B[B)[B

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zzb:I

    array-length p1, p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 13
    throw p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zza()V

    .line 7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset without primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
