.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzli;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzli;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzli;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzli;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;-><init>()V

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant HybridConfigurationV1 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
    .locals 3

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object p0

    .line 6
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    if-eqz v0, :cond_0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzko;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    if-eqz v0, :cond_1

    .line 9
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzks;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzks;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown key class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;
    .locals 3

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object p0

    .line 13
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkr;

    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkr;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkr;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzla;)Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown key class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzlg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    return-object v0
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzli;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzli;

    return-object v0
.end method
