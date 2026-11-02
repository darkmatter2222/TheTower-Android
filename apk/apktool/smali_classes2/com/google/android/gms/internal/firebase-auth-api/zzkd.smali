.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Lcom/google/android/gms/internal/firebase-auth-api/zzqh;)Lcom/google/android/gms/internal/firebase-auth-api/zzbp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzch;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzqh<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbp;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbp;"
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

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzqh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjr;

    if-eqz v5, :cond_0

    .line 11
    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjr;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v4

    goto :goto_1

    .line 12
    :cond_0
    instance-of v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    if-eqz v5, :cond_1

    .line 13
    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzon;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzon;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object v4

    .line 17
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza()I

    move-result v2

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbp;I)V

    .line 19
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaau;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzpw;

    goto :goto_2

    .line 14
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

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
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_3
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbl;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;->zza()Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzou;

    move-result-object v2

    .line 24
    const-string v3, "encrypt"

    const-string v4, "daead"

    invoke-interface {v2, p0, v1, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Lcom/google/android/gms/internal/firebase-auth-api/zzoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    move-result-object v3

    .line 25
    const-string v5, "decrypt"

    invoke-interface {v2, p0, v1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Lcom/google/android/gms/internal/firebase-auth-api/zzoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    move-result-object v1

    goto :goto_3

    .line 27
    :cond_4
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzow;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzow;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    .line 29
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    .line 30
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzqh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzck;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzch;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;->zza()I

    move-result p0

    invoke-direct {v4, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbp;I)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpw;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpu;

    move-result-object p0

    invoke-direct {v2, v4, p0, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkg;Lcom/google/android/gms/internal/firebase-auth-api/zzpu;Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzot;)V

    return-object v2

    .line 2
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
