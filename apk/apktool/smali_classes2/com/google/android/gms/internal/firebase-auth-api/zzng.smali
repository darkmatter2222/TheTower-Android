.class final Lcom/google/android/gms/internal/firebase-auth-api/zzng;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzmi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmc;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzni;)V

    .line 14
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    return-void
.end method

.method private final zza([B[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    filled-new-array {p2, p3}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object v4

    .line 24
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:[B

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza([B)[B

    move-result-object v6

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    const-string v5, "shared_secret"

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;->zza()I

    move-result v7

    const/4 v1, 0x0

    .line 27
    const-string v3, "eae_prk"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;->zza([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzml;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zza:[B

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzb:[B

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza([B[B)[B

    move-result-object v1

    .line 5
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza([B[B[B)[B

    move-result-object p1

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;-><init>([B[B)V

    return-object v1
.end method

.method public final zza()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;->zzb()[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:[B

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza([BLcom/google/android/gms/internal/firebase-auth-api/zzmk;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object v1

    .line 18
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza([B[B)[B

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p2

    .line 21
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza([B[B[B)[B

    move-result-object p1

    return-object p1
.end method
