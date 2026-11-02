.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzzj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbr;


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;",
            ">;"
        }
    .end annotation
.end field

.field static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

.field private final zzd:Ljava/lang/String;

.field private final zze:[B

.field private final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

.field private final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

.field private final zzh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzc;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzzp;Lcom/google/android/gms/internal/firebase-auth-api/zzlu;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zze:[B

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzd:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 54
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    .line 55
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzh:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkr;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;
    .locals 8
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

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkr;->zzf()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkr;->zzf()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 8
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 9
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 10
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v3, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 11
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 12
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    const-string v2, "EC"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 14
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zze;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl;)Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    move-result-object v6

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzzp;Lcom/google/android/gms/internal/firebase-auth-api/zzlu;[B)V

    return-object v1
.end method

.method static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string p0, "HmacSha1"

    return-object p0

    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string p0, "HmacSha224"

    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const-string p0, "HmacSha256"

    return-object p0

    .line 31
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    const-string p0, "HmacSha384"

    return-object p0

    .line 33
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkl$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    const-string p0, "HmacSha512"

    return-object p0

    .line 35
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hash unsupported for EciesAeadHkdf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zze:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    .line 58
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    move-object v3, p2

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzzl;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/firebase-auth-api/zzzp;)Lcom/google/android/gms/internal/firebase-auth-api/zzzo;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zzb()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zzh:[B

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzo;->zza()[B

    move-result-object p2

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza([B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method
