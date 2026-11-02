.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzei;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzee;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbw<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoz<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzel;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzob<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzel;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeh;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzee;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    .line 13
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 15
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzani;

    move-result-object v2

    .line 17
    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzxg$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzani;)Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzek;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzek;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzel;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzee;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzc()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzee;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzel;)Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzc()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzee$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzee;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method

.method public static zza(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhd;->zza()V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string v2, "AES128_GCM"

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    const/16 v3, 0xc

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    const/16 v4, 0x10

    .line 32
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;

    .line 34
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    move-result-object v2

    .line 36
    const-string v5, "AES128_GCM_RAW"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "AES256_GCM"

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    const/16 v3, 0x20

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    move-result-object v2

    .line 45
    const-string v3, "AES256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza(Ljava/util/Map;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoz;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoz;Ljava/lang/Class;)V

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzob;Ljava/lang/Class;)V

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbw;Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;Z)V

    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
