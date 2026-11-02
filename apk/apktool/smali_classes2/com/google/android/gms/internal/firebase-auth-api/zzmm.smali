.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzmm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzks;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzla;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcu<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbw<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzob<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    .line 43
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmo;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    .line 45
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 47
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    move-result-object v1

    .line 48
    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzani;)Lcom/google/android/gms/internal/firebase-auth-api/zzcu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcu;

    .line 50
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->d_()Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    move-result-object v2

    .line 52
    const-string v3, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzani;)Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza()V

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 61
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 66
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 69
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 72
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 74
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 77
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 79
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 80
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 82
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 90
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 93
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 96
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 98
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 101
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 104
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 106
    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 109
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 110
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 111
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 114
    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 122
    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 130
    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 138
    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 146
    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 150
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 151
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 154
    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 162
    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 170
    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 175
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 178
    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 181
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 182
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 184
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 186
    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 189
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 192
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 194
    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 197
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 200
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v1

    .line 202
    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza(Ljava/util/Map;)V

    .line 205
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpg;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V

    .line 207
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpg;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 208
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V

    .line 209
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;)V

    .line 210
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcu;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbw;Z)V

    .line 211
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbw;Z)V

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering HPKE Hybrid Encryption is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;
    .locals 5
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "XWING"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zza()[B

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zza([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznt;->zza()Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    :try_start_0
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 28
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 30
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;->getEncoded()[B

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    .line 33
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmm$zza;->getEncoded()[B

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can\'t generate X-Wing key"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 25
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can\'t generate X-Wing key as Conscrypt is not available"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unknown KEM ID"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzzp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzp;

    .line 13
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 14
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;Lcom/google/android/gms/internal/firebase-auth-api/zzzp;Ljava/security/spec/ECPoint;)[B

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I

    move-result v2

    .line 19
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v1

    .line 40
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    move-result-object p0

    .line 41
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzks;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    move-result-object p0

    return-object p0
.end method
