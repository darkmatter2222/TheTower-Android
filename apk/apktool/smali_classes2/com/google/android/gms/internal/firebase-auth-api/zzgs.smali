.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpq<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzdw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzdp;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 145
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgr;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 146
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzps;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    .line 147
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgu;-><init>()V

    .line 148
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    .line 149
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgt;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    .line 150
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    .line 151
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;-><init>()V

    .line 152
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdp;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;
    .locals 4

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzto$zza;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v2

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zztu$zza;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzto$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztu;)Lcom/google/android/gms/internal/firebase-auth-api/zzto$zza;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzwg$zza;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwm;)Lcom/google/android/gms/internal/firebase-auth-api/zzwg$zza;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v2

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzwg$zza;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzto$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwg;)Lcom/google/android/gms/internal/firebase-auth-api/zzto$zza;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzto;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zzb()Ljava/lang/Integer;

    move-result-object p0

    .line 34
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzcw;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 7
    :cond_2
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

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;
    .locals 5

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztx$zza;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzd()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztx$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;)Lcom/google/android/gms/internal/firebase-auth-api/zztx$zza;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztx$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zztx$zza;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zztx;

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztx;)Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzwj$zza;

    move-result-object v2

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwm;)Lcom/google/android/gms/internal/firebase-auth-api/zzwj$zza;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzc()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzwj$zza;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;

    .line 52
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwj;)Lcom/google/android/gms/internal/firebase-auth-api/zztr$zza;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    .line 55
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_0

    .line 99
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    return-object p0

    .line 100
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_1

    .line 101
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    return-object p0

    .line 102
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_2

    .line 103
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    return-object p0

    .line 104
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    if-ne p0, v0, :cond_3

    .line 105
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    return-object p0

    .line 106
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

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwh;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgv;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 96
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse HashType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    return-object p0

    .line 94
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    return-object p0

    .line 93
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    return-object p0

    .line 92
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

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

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpf;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V

    .line 156
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpm;)V

    .line 157
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 158
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzdd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzto;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zza()I

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwh;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v2

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v0

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner HMAC keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner AES CTR keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCtrHmacAeadKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzwj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztx;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzwj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztx;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzwj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzwj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwj;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwh;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;

    move-result-object p0

    .line 125
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzwm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzwm$zza;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zze()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzwm$zza;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    move-result-object p0

    .line 131
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    goto :goto_0

    .line 133
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    goto :goto_0

    .line 135
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    goto :goto_0

    .line 137
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdw$zzc;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwh;

    .line 142
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwh;)Lcom/google/android/gms/internal/firebase-auth-api/zzwm$zza;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    return-object p0

    .line 141
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize HashType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
