.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzzk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbs;


# instance fields
.field private final zza:Ljava/security/interfaces/ECPrivateKey;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzm;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[B

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

.field private final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

.field private final zzg:[B


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzzp;Lcom/google/android/gms/internal/firebase-auth-api/zzlu;[B)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zza:Ljava/security/interfaces/ECPrivateKey;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzm;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzm;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzd:[B

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzc:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 24
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    .line 25
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzg:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzko;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaat;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaat;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Ljava/math/BigInteger;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v3

    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [B

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl;)Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    move-result-object v7

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlm;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzzp;Lcom/google/android/gms/internal/firebase-auth-api/zzlu;[B)V

    return-object v2
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzg:[B

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzg:[B

    array-length v0, v0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zza:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Ljava/security/spec/EllipticCurve;)I

    move-result v1

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_0

    mul-int/2addr v1, v3

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown EC point format"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    mul-int/2addr v1, v3

    :cond_2
    add-int/2addr v1, v4

    .line 39
    :goto_0
    array-length v2, p1

    add-int/2addr v1, v0

    if-lt v2, v1, :cond_3

    .line 41
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzm;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzd:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    move-object v7, p2

    .line 44
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzzm;->zza([BLjava/lang/String;[B[BILcom/google/android/gms/internal/firebase-auth-api/zzzp;)[B

    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-interface {v0, p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza([B[BI)[B

    move-result-object p1

    return-object p1

    .line 40
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid ciphertext (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
