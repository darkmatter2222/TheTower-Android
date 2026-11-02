.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzsb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpq<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzra;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzqt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    .line 83
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzps;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    .line 84
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsd;-><init>()V

    .line 85
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsc;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzqt;

    .line 87
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    .line 88
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsf;-><init>()V

    .line 89
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzqt;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;
    .locals 3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztf$zza;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzro;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzra;)Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztf$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztl;)Lcom/google/android/gms/internal/firebase-auth-api/zztf$zza;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztf$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zztf$zza;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztf;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzro;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zzb()Ljava/lang/Integer;

    move-result-object p0

    .line 21
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzcw;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 9
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzti$zza;

    move-result-object v1

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzra;)Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzti$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztl;)Lcom/google/android/gms/internal/firebase-auth-api/zzti$zza;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zzc()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzti$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzti$zza;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    .line 31
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_0

    .line 55
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_1

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    return-object p0

    .line 58
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_2

    .line 59
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    return-object p0

    .line 60
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_3

    .line 61
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    return-object p0

    .line 62
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzra;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    move-result-object p0

    return-object p0
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpf;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpm;)V

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt;
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzdd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zztf;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztf;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqt;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCmacKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCmacProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzra;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzti;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzra$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzra;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 71
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCmacParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesCmacProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzra;)Lcom/google/android/gms/internal/firebase-auth-api/zztl;
    .locals 1

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztl$zza;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzra;->zzb()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zztl$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zztl$zza;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    return-object p0
.end method
