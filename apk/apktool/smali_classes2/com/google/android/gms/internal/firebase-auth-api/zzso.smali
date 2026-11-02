.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzso;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Lcom/google/android/gms/internal/firebase-auth-api/zzqh;)Lcom/google/android/gms/internal/firebase-auth-api/zzrd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzch;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzqh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrd;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrd;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzqh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzrd;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v3

    .line 10
    instance-of v5, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzrp;

    if-eqz v5, :cond_0

    .line 11
    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzrp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrp;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_0
    instance-of v5, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    if-eqz v5, :cond_1

    .line 13
    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzon;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v3

    .line 17
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzpw;

    goto :goto_2

    .line 14
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get output prefix for key of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " with parameters "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrd;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzrd;Lcom/google/android/gms/internal/firebase-auth-api/zzsq;)V

    return-object p1

    .line 2
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
