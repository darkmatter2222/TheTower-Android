.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpq<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzla;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzks;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwr;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzws;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zznx<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzku;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    .line 122
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzps;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;-><init>()V

    .line 124
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    .line 126
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;-><init>()V

    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 128
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzky;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    .line 130
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    .line 131
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>()V

    .line 132
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzws;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzws;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzws;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 145
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwp;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I

    move-result p0

    .line 119
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzks;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;
    .locals 3

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzks;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzxa$zza;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zzb()Ljava/lang/Integer;

    move-result-object p0

    .line 28
    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzcw;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;
    .locals 3

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcw;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zzb()Ljava/lang/Integer;

    move-result-object p0

    .line 13
    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzcw;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzwu$zza;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzwu$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->a_()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    .line 34
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcx;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    goto :goto_1

    .line 40
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    goto :goto_1

    .line 42
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_3
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;

    .line 46
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzwp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd$zza;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    return-object p0
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpf;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V

    .line 153
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpm;)V

    .line 154
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 155
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    .line 156
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 157
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzcx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzwu;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing HpkeParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcx;->zzc()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to HpkeProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwr;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzws;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwp;)Lcom/google/android/gms/internal/firebase-auth-api/zzwx$zza;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;
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

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza()I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Only version 0 keys are accepted"

    if-nez v1, :cond_1

    .line 70
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zza()I

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd()Ljava/lang/Integer;

    move-result-object p0

    .line 78
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    move-result-object p0

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I

    move-result v1

    .line 84
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzks;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzct;Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzdd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    move-result-object v0

    .line 94
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzwx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcv;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)Lcom/google/android/gms/internal/firebase-auth-api/zzkq;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkq;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd()Ljava/lang/Integer;

    move-result-object p0

    .line 101
    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq;Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
