.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-eqz v0, :cond_5

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    if-eqz v1, :cond_2

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Only SHA256 KDF is supported with X-Wing KEM"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    return-object v2

    .line 16
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE AEAD parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KDF parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KEM parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
