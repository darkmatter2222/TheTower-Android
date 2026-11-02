.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzeo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzen;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzob<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzes;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoz<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzes;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbw<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzer;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzen;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzet;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;

    .line 12
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzus;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    move-result-object v2

    .line 14
    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzani;)Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzen;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes;)Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzen$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzen;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza()V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    const/16 v2, 0x10

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 26
    const-string v3, "AES128_GCM_SIV"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 32
    const-string v2, "AES128_GCM_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    const/16 v2, 0x20

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    .line 36
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 38
    const-string v3, "AES256_GCM_SIV"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 44
    const-string v2, "AES256_GCM_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza(Ljava/util/Map;)V

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpa;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoz;Ljava/lang/Class;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;)V

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpg;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbw;Z)V

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
