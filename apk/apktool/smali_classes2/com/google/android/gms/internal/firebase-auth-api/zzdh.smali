.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdn;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdn;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdk;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdp;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzee;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzee;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzee;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzen;

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzen;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzen;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdx;

    if-eqz v0, :cond_3

    .line 9
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdx;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdx;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    if-eqz v0, :cond_5

    .line 11
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzeu;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzeu;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    if-eqz v0, :cond_7

    .line 17
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgl;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgl;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 22
    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgf;

    if-eqz v0, :cond_8

    .line 23
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgf;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgf;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    move-result-object p0

    return-object p0

    .line 24
    :cond_8
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

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzdn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdn;

    return-object v0
.end method
